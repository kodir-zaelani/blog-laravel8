<?php

namespace App\Models;

use App\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Categorypage extends Model
{
    use HasFactory;
    // use SoftDeletes;

    use Uuid;

    //  Parent boot creating dipindah ke app/Traits/Uuid.php

    
    protected $guarded = [];

    public function page()
    {
      return  $this->belongsToMany(Page::class);
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }
}
