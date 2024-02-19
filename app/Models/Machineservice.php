<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Machineservice extends Model
{
    use HasFactory;
    protected $table = 'machineservice';

    protected $fillable = [
        'id','title', 'spantitle', 'content','machinetitle','image','machineimage','description','is_service','servicetitle','servicedescription'
    ];
   
}
