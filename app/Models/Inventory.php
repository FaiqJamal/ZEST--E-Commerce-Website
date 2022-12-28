<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Inventory extends Model
{
    use HasFactory;
    protected $table = 'inventory';
    protected $primaryKey = 'id';
    public $timestamps = false;

    protected $fillable = [
         'productId', 'small', 'medium','large'
    ];

    public function product()
    {
        return $this->belongsTo(Product::class, 'product_id');
    }
}
