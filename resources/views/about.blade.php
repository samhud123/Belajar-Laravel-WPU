@extends('layouts.main')

@section('container')
    <h1>Halaman About</h1>
    <h2>{{ $name }}</h2>
    <p>{{ $email }}</p>
    <img src="image/{{ $foto }}" alt="{{ $name }}" width="200px">
@endsection