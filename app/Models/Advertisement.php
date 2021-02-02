<?php

namespace App\Models;

use App\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Advertisement extends Model
{
    use HasFactory;

    use Uuid;

    //  Parent boot creating dipindah ke app/Traits/Uuid.php

    /**
     * getIncrementing 
     * dinonaktifkan karena menggunakan uuid
     * @return void
     */
    public function getIncrementing()
    {
        return false;
    }
    
    /**
     * getKeyType
     * Get the auto-increment key type
     * @return void
     */
    public function getKeyType()
    {
        return 'string';
    }
    
    protected $guarded = [];
 
    public function author()
    {
        return $this->belongsTo(User::class, 'author_id');
    }

    public function getImageUrlAttribute($value)
    {
        $imageUrl = "";
        
        if (!is_null($this->image)) {
            $directory = config('cms.image.directoryAdvertisements');
            $imagePath = public_path() ."/{$directory}" . $this->image;
            if(file_exists($imagePath)) $imageUrl = asset("/{$directory}" . $this->image);
        }
        
        return $imageUrl;
    }
    

    public function getImageThumbUrlAttribute($value)
    {
        $imageThumbUrl = "";
        
        if (!is_null($this->image)) {
            $directory = config('cms.image.directoryAdvertisements');
            $ext       = substr(strrchr($this->image, '.'), 1);
            $thumbnail = str_replace(".{$ext}", "_thumb.{$ext}", $this->image);
            $imagePath = public_path() ."/{$directory}" . $thumbnail;
            if(file_exists($imagePath)) $imageThumbUrl = asset("/$directory" . $thumbnail);
        }
        
        return $imageThumbUrl;
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function getStatusLabelAttribute()
    {
        //ADAPUN VALUENYA AKAN MENCETAK HTML BERDASARKAN VALUE DARI FIELD STATUS
        if ($this->status == 0) {
            return '<span class="badge badge-primary">Draft</span>';
        }
        return '<span class="badge badge-success">Published</span>';
        
    }

    // fungsi scope untuk manampilkan yang status publish
    public function scopePublished($query)
    {
        return $query->where("status", "=", 1);
    }
    
    //change default date view
    public function getCreatedAtAttribute($createdAt)
    {   
        // return Carbon::parse($date)->format('d-M-Y');
        return \Carbon\Carbon::parse($this->attributes['created_at'])
        ->diffForHumans();
    }
}
