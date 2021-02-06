<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="crsf-token" content="{{ csrf_token() }}">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  
  @if ($global_settings->meta_description)
        <meta name="description" content="{{ $global_settings->meta_description }}">
    @endif
    
    @if ($global_settings->meta_key)
        <meta name="keywords" content="{{ $global_settings->meta_key }}">
    @endif
    
    <meta name="author" content="Kodir Zaelani">
    {{-- <title>{{ config('app.name', 'Laman Kreasi') }}</title> --}}
    <title>@yield('title', 'Laman Kreasi')</title>
    <!-- Favicon -->
    @if ($global_settings->favicon)
        <link rel="icon" type="image/png" href="{{ $global_settings->getFavicon() }}">
    @endif
    
  @include('admin.templates.partials.styles')
  @trixassets
  @livewireStyles
</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">
    @include('admin.templates.partials.navbar')
    @include('admin.templates.partials.sidebar')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    @yield('content')
  </div>
  <!-- /.content-wrapper -->

  @include('admin.templates.partials.footer')

</div>
<!-- ./wrapper -->

@include('admin.templates.partials.scripts')
@livewireScripts
</body>
</html>
