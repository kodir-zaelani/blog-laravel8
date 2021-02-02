<div>
    @section("title")Detail Post @endsection
    <div class="cta-header pt-5">
        <div class="container-fluid">
            <div class="row justify-content-center pt-5">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="cta-header-title text-center">
                        <h2 class="py-4 text-uppercase font-weight-bold">DETAIL ARTIKEL</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Blog Archive -->
    <section class="section-detail" style="background-color:#f1f3f5">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12">
                    <div class="row">
                        <div class="col-12">
                            <!-- Single blog -->
                            <div class="card">
                                <div class="card-img">
                                    @if ($post->imageUrl)
                                    <a href="{{ route('post.show', $post) }}"><img src="{{ $post->imageUrl }}" class="card-img-top" alt="{{ $post->title }}" class="w-100"></a>   
                                    @else
                                    <a href="{{ route('post.show', $post) }}"><img src="{{ url('') }}/assets/help/img/edu5.jpeg" class="card-img-top" alt="{{ $post->title }}" 
                                        class="w-100"></a>
                                        @endif
                                        
                                    </div>
                                    <div class="card-body">
                                        <h2 class="card-title">{{ $post->title}}</h2>
                                        <div class="blog-meta">
                                        
                                            <span class="author">
                                                @if ($post->author->photo)
                                                <img src="{{ url('') }}/uploads/photos/users/photos_thumb/{{ $post->author->photo}}"  ><span><a href="{{ route('author.show', $post->author->slug) }}">{{ $post->author->name  }}</a></span></li>
                                                @else
                                                <i class="fa fa-user"></i> <span><a href="{{ route('author.show', $post->author->slug) }}">{{ $post->author->name  }}</a></span>
                                                @endif
                                            </span>
                                            <span class="mr-2"><i class="fas fa-calendar-alt mr-1"></i> {{ $post->created_at }} </span>
                                        <span class="mr-2"><i class="fa fa-folder mr-1"></i>
                                            <a href="{{ route('categorypost.show', $post->categorypost->slug) }}"> {{ $post->categorypost->title }}</a> </span>
                                        {{-- <span><i class="fa fa-comments"></i>
                                                <a href="#post-comments">{{ $post->commentsNumber('Comment') }}</a></span> --}}
                                        </div>
                                        
                                        {!! $post->content !!}
                                        @if ($post->video)
                                        <hr>
                                        <div class="pt-5 embed-responsive embed-responsive-16by9">
                                            <iframe height="450" src="{{ $post->video }}"></iframe>
                                        </div>
                                        <div class="row justify-content-center">
                                            <div class="text-center col ">
                                                <p class="fw-lighter fst-italic">{{ $post->caption_video }}</p>
                                            </div>
                                        </div>
                                        @endif
                                        <hr>
                                        Artikel ini telah dibaca sebanyak <strong>{{ $post->view_count }}</strong> kali
                                        @if ($post->tags_html )
                                        <p> <i class="fa fa-tags mr-2"></i> {!! $post->tags_html !!}</p>
                                        @endif
                                        
                                    </div>
                                </div>
                                
                                <!--/ End Single blog -->
                            </div> 
                           
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-4 col-12">
                        <!-- Blog Sidebar -->
                        @livewire('frontend.main.sidebarcategory')
                        @livewire('frontend.main.sidebarpopular')
                        @livewire('frontend.main.sidebartags')
                        
                        @if (count($global_widget_sidebar_right_bottom))
                        <div class="row">
                            <div class="col-12">
                                @foreach ($global_widget_sidebar_right_bottom as $item)
                                <div class="card card-primary mb-3" >
                                    <div class="card-body">
                                    <h4 class="font-weight-bold">{{ $item->title }}</h4>
                                    <hr>
                                    <div class="row">
                                        <div class="col text-center">
                                            {!! $item->source !!}
                                        </div>
                                    </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                        @endif
                        {{-- @livewire('frontend.main.sidebarphoto') --}}
                        <!--/ End Blog Sidebar -->
                    </div>
                </div>
            </div>
        </section>
        
    </div>
    