<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;

class Machineservice extends Model
{
    use HasFactory;

    protected $table = 'machineservice';

    protected $fillable = [
        'id', 'title', 'spantitle', 'content', 'machinetitle', 'image', 'machineimage', 
        'description', 'is_service', 'servicetitle', 'servicedescription',
    ];

    protected static function boot()
    {
        parent::boot();

        // Clear the cache when a Machineservice instance is saved (created or updated)
        static::saved(function ($instance) {
            $cacheKey = 'machineservice_is_service_1';
            Cache::forget($cacheKey);
            Log::info("Cache cleared for key: {$cacheKey} due to save operation.");
        });

        // Clear the cache when a Machineservice instance is deleted
        static::deleted(function ($instance) {
            $cacheKey = 'machineservice_is_service_1';
            Cache::forget($cacheKey);
            Log::info("Cache cleared for key: {$cacheKey} due to delete operation.");
        });
    }
}
