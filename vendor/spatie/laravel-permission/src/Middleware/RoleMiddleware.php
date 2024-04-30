<?php

namespace Spatie\Permission\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Exceptions\UnauthorizedException;
use Spatie\Permission\Guard;

class RoleMiddleware
{
    public function handle($request, Closure $next, $role, $guard = null)
    {
        $authGuard = Auth::guard($guard);

        $user = $authGuard->user();

        // For machine-to-machine Passport clients
        if (! $user && $request->bearerToken() && config('permission.use_passport_client_credentials')) {
            $user = Guard::getPassportClient($guard);
        }

        if (! $user) {
            throw UnauthorizedException::notLoggedIn();
        }

        if (! method_exists($user, 'hasAnyRole')) {
            throw UnauthorizedException::missingTraitHasRoles($user);
        }

        // $roles = is_array($role)
        //     ? $role
        //     : explode('|', $role);

        // if (! $user->hasAnyRole($roles)) {
        //     throw UnauthorizedException::forRoles($roles);
        // }
        $user = Auth::user();

        // Fetch roles associated with the user from the database
        $userRoles = $user->roles->pluck('name')->toArray();

        // Split the provided role string into an array of roles
        $roles = is_array($role) ? $role : explode('|', $role);

        // Check if user has any of the required roles specified in the route
        if (! $user->hasAnyRole($roles)) {
            // If the user doesn't have any required role, throw an UnauthorizedException
            throw UnauthorizedException::forRoles($roles);
        }

        return $next($request);
    }

    /**
     * Specify the role and guard for the middleware.
     *
     * @param  array|string  $role
     * @param  string|null  $guard
     * @return string
     */
    public static function using($role, $guard = null)
    {
        $roleString = is_string($role) ? $role : implode('|', $role);
        $args = is_null($guard) ? $roleString : "$roleString,$guard";

        return static::class.':'.$args;
    }
}
