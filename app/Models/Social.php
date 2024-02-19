<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Social extends Model
{
    use HasFactory;
    protected $table = 'socia';

    protected $fillable = [
        'id','contact', 'description', 'facebook','google','twitter','instagram','is_social'
    ];

}
