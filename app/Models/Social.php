<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Social extends Model
{
    use HasFactory;

    //  Parent boot creating dipindah ke app/Traits/Uuid.php

    protected  $guarded = [];
}
