<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use Auth;
class Product extends Model
{
    protected $fillable = ['code', 'name', 'slug', 'brand_id', 'reference_id', 'full_description', 'short_description', 'tags',
    'active', 'type_id'];
    protected static function boot()
    {
      parent::boot();
      if (!Auth::check() || Auth::user()->role == 'user') {
        static::addGlobalScope('active', function (Builder $builder) {
            $builder->where('active', 1);
        });
      }
    }

    public function images() {
      return $this->hasMany(Image::class);
    }
    public function attributes() {
      return $this->hasMany(ProductAttribute::class);
    }
    /*public function allAttribute() {
      return $this->hasMany('App\ProductAttribute', 'id_product');
    }*/
    public function reference() {
      //return $this->hasOne(ProductReference::class);
      return $this->BelongsTo(Reference::class);
    }
    public function brand() {
      return $this->BelongsTo(Brand::class);
    }
    public function lot() {
      return $this->hasOne(Lot::class);
    }
    public function discount() {
      return $this->hasOne(Discount::class);
    }
    public function getHasDiscountAttribute() {
      $discount = $this->discount;
      $now = date('Y-m-d H:i:s');
      if ($discount && $now >= $discount->start && $now <= $discount->end) {
        return $discount->percent;
      }
      return 0;
    }
    public function serials() {
      return $this->hasMany(Serial::class)->where('lot_id', $this->lot->id);
    }
    /*public function categories() {
      return $this->BelongsToMany(CategoryProduct::class);
    }
    /*public function discount() {
      return $this->hasOne('App\ProductDiscount', 'id', 'id_discount');
    }*/
    public function rating() {
      return $this->BelongsToMany(ProductRating::class);
    }
    public function getScoreAttribute() {
      return count($this->rating);
    }
    public function categories() {
      return $this->hasMany(CategoryProduct::class);
    }
    public function type() {
      return $this->hasOne(ProductType::class);
    }
}
