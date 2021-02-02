@extends('layouts.appfrontend')
@section('title', '404 Not Found') 
@section('content')
<div class="cta-header pt-5">
    <div class="container-fluid">
        <div class="row justify-content-center pt-5">
            <div class="col-lg-6 col-md-6 col-12">
                <div class="cta-header-title text-center">
                    <h2 class="py-4 text-uppercase font-weight-bold">NOT FOUND</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<section class="blogs" style="background-color:#edf2f7">
    <div class="container-fluid " >
        <div class="row ">
            <div class="col-md-12 col-lg-12 col-12 text-center">
                <h2 class="fw-bolder">Selamat Anda menemukan halaman <span class="fw-bolder fs-1"">404</span></h2>
                <a href="/" class="btn btn-primary"> Home</a>
            </div> 
        </div>
    </div>
</section>

@stop
{{-- @extends('errors::illustrated-layout')

@section('title', __('Not Found'))
@section('code', '404')
@section('message', __('Not Found')) --}}
