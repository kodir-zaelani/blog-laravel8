<div>
    
    @if ($global_settings->status_slider == 1)
        @livewire('frontend.main.heroslider')
    @else
        @livewire('frontend.main.banner')
    @endif

    
    @livewire('frontend.post.index')

    @livewire('frontend.post.categorypostindex')
    
    @livewire('frontend.photo.index')
    
</div>
