@extends('layouts.main')

@section('container')
    <h1 class="mb-3 text-center">{{ $title }}</h1>

    <div class="row justify-content-center mb-3">
        <div class="col-md-6">
            <form action="/posts">
                @if (request('category'))
                    <input type="hidden" name="category" id="category" value="{{ request('category') }}">
                @endif
                @if (request('author'))
                    <input type="hidden" name="author" id="author" value="{{ request('author') }}">
                @endif
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Search..." name="search" value="{{ request('search') }}">
                    <button class="btn btn-danger" type="submit" >Search</button>
                </div>
            </form>
        </div>
    </div>

    @if ($posts->count())
        <div class="card mb-5">
            @if ($posts[0]->image)
                <div style="max-height: 400px; overflow: hidden;">
                    <img src="{{ asset('storage/' . $posts[0]->image) }}" alt="{{ $posts[0]->category->name }}" class="img-fluid">
                </div>
            @else
                <img src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->name }}" class="card-img-top" alt="{{ $posts[0]->category->name }}">
            @endif
            
            <div class="card-body text-center">
            <h3 class="card-title"><a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none text-dark">{{ $posts[0]->title }}</a></h3>

            <p>
                <small>
                    By. <a href="/posts?author={{ $posts[0]->author->username }}" class="text-decoration-none">{{ $posts[0]->author->name }}</a> in <a href="/posts?category={{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a> {{ $posts[0]->created_at->diffForHumans() }}
                </small>
            </p>
            <p class="card-text">{{ $posts[0]->excerpt }}</p>

            <a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none btn btn-primary">Read more</a>

            </div>
        </div>
    

        <div class="container">
            <div class="row g-4">
                @foreach ($posts->skip(1) as $p)
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <div class="position-absolute px-3 py-2" style="background-color: rgba(0, 0, 0, 0.7)"><a href="/posts?category={{ $p->category->slug }}" class="text-white text-decoration-none">{{ $p->category->name }}</a></div>

                        @if ($p->image)
                            <img src="{{ asset('storage/' . $p->image) }}" alt="{{ $p->category->name }}" class="img-fluid">
                        @else
                            <img src="https://source.unsplash.com/500x400?{{ $p->category->name }}" class="card-img-top" alt="{{ $p->category->name }}">
                        @endif

                        <div class="card-body">
                        <h5 class="card-title">{{ $p->title }}</h5>
                        <p>
                            <small>
                                By. <a href="/posts?author={{ $p->author->username }}" class="text-decoration-none">{{ $p->author->name }}</a> {{ $p->created_at->diffForHumans() }}
                            </small>
                        </p>
                        <p class="card-text">{{ $p->excerpt }}</p>
                        <a href="/posts/{{ $p->slug }}" class="btn btn-primary text-decoration-none">Read more</a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>

    @else
        <p class="text-center fs-4">No post found</p>
    @endif

    {{ $posts->links() }}

@endsection