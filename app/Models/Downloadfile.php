<?php

namespace App\Models;

use App\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Downloadfile extends Model
{
    use HasFactory;
    use Uuid;

    //  Parent boot creating dipindah ke app/Traits/Uuid.php

    
    protected $guarded = [];

    
    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function author()
    {
        return $this->belongsTo(User::class, 'author_id');
    }
    public function categorydownload()
    {
        return $this->belongsTo(Categorydownload::class);
    }
}
