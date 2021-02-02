<?php

namespace App\Http\Livewire\Admin\Socialmedia;

use App\Models\Social;
use Livewire\Component;

class Index extends Component
{
    public $facebook;
    public $facebook_embed;
    public $instagram;
    public $instagram_embed;
    public $twitter;
    public $twitter_embed;
    public $whatapps;
    public $telegram;
    public $youtube;
    public $youtube_embed;
    public $socialId = 1;

    public function mount()
    {
        $model = Social::find($this->socialId);
        $this->facebook = $model->facebook;
        $this->facebook_embed = $model->facebook_embed;
        $this->instagram = $model->instagram;
        $this->instagram_embed = $model->instagram_embed;
        $this->youtube = $model->youtube;
        $this->youtube_embed = $model->youtube_embed;
        $this->twitter = $model->twitter;
        $this->twitter_embed = $model->itwitter_embed;
        $this->whatapps = $model->whatapps;
        $this->telegram = $model->telegram;
    }

    public function update()
    {

        $data = [
            'facebook' => $this->facebook,
            'facebook_embed' => $this->facebook_embed,
            'instagram' => $this->instagram,
            'instagram_embed' => $this->instagram_embed,
            'youtube' => $this->youtube,
            'youtube_embed' => $this->youtube_embed,
            'twitter' => $this->twitter,
            'twitter_embed' => $this->twitter_embed,
            'whatapps' => $this->whatapps,
            'telegram' => $this->telegram,
            
        ];

        

        if(count($data)) {
            $social = Social::find($this->socialId);
            $social->update($data);
            // Sweet alert
            session()->flash('success', 'Data updated successfully');
            return redirect()->to('/backend/socialmedia');
        }
        
    }
    
    public function render()
    {
        return view('livewire.admin.socialmedia.index');
    }
}
