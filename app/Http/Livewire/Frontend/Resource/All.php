<?php

namespace App\Http\Livewire\Frontend\Resource;

use App\Models\Categorylearningresource;
use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Learningresource;

class All extends Component
{
    use WithPagination;
    //view pagination menggunakan bootstrap
    //karena livewire versi 2 menggunakan tailwind
    protected $paginationTheme = 'bootstrap';
    
    public $statusShow = false;

    public $currentPage = 1;
    public $paginate = 4;
    public $search = '';

    protected $queryString = [
        // Keeping A Clean Query String https://laravel-livewire.com/docs/2.x/query-string#clean-query-string
        'search' => ['except' => ''],
        'currentPage' => ['except' => 1]
    ];

    public function mount()
    {
        // Keeping A Clean Query String https://laravel-livewire.com/docs/2.x/query-string#clean-query-string
        $this->fill(request()->only('search', 'currentPage'));
        $this->resetSearch();

    }

    public function resetSearch()
    {
        $this->search = '';
    }

    public function updatingSearch()
    {
        $this->resetPage();
    } 
    
    public function render()
    {
        $categorylearningresources = Categorylearningresource::orderBy('id', 'asc')
                        ->with('learningresource', 'author')
                        ->get();

        $learningresources = $this->search === null ?
        Learningresource::with('author', 'categorylearningresource','levelclass')
                ->orderby('created_at', 'asc')
                ->paginate($this->paginate) :
        Learningresource::where('title', 'like', '%' .$this->search . '%')
                ->with('author', 'categorylearningresource','levelclass')
                ->orderby('created_at', 'asc')
                ->paginate($this->paginate);
                

        return view('livewire.frontend.resource.all', compact('learningresources', 'categorylearningresources'))
        ->extends('layouts.appfrontend')
        ->section('content');
    }
}
