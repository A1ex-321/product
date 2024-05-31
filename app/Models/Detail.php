<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Detail extends Model
{
    use HasFactory;
    protected $table = 'detail';

    protected $fillable = [
        'id','category', 'wnumber', 'mail','address','header','footer'
    ];
    public function blogscos()
    {
        return $this->hasMany(Blogsco::class, 'category');
    }
}
