<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Detail extends Model
{
    use HasFactory;
    protected $table = 'detail';

    protected $fillable = [
        'id','dnumber', 'wnumber', 'mail','address','header','footer'
    ];
    
}
