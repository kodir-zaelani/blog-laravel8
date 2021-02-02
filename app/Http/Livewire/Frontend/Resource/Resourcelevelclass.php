<?php

namespace App\Http\Livewire\Frontend\Resource;

use App\Models\Levelclass;
use Livewire\Component;
use Illuminate\Http\Request;
use Livewire\WithPagination;

class Resourcelevelclass extends Component
{
    use WithPagination;
    //view pagination menggunakan bootstrap
    //karena livewire versi 2 menggunakan tailwind
    protected $paginationTheme = 'bootstrap';
    /**
     * public variable
     */
    public $segment;
    public $perPage  = 6;

    /**
     * mount or construct function
     */
    public function mount(Request $request)
    {
        $this->segment = $request->segment(3);
    }

    public function render()
    {

        $levelclass = Levelclass::where('slug', $this->segment)->first();

            $learningresources = $levelclass->learningresource()
                    ->with('author', 'categorylearningresource')
                    ->paginate($this->perPage);
            
            return view('livewire.frontend.resource.resourcelevelclass', compact('learningresources', 'levelclass'))
            ->extends('layouts.appfrontend')
            ->section('content');
    }
    
}
