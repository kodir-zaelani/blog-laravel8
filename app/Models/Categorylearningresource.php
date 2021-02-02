<?php

namespace App\Models;

use App\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Categorylearningresource extends Model
{
    use HasFactory;
    use Uuid;

    //  Parent boot creating dipindah ke app/Traits/Uuid.php

    
    protected $guraded = [];

    public function author()
    {
        return $this->belongsTo(User::class, 'author_id');
    }

    public function learningresource()
    {
      return  $this->hasMany(Learningresource::class);
    }

    public function getLinkAttribute()
    {
        return '/categorylearningresource/'.$this->slug;
    }
    
}
