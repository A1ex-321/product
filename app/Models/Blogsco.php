<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blogsco extends Model
{
    use HasFactory;
    protected $table = 'blogsco';

    protected $fillable = [
        'title','description' ,'image','content','category'
    ];
    public function detail()
    {
        return $this->belongsTo(Detail::class, 'id');
    }
 
}
