<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TenantController;
use App\Http\Controllers\AuthController;

Route::get('/', function () {
    return view('welcome');
});


// Main domain (registration)
Route::get('/', [TenantController::class, 'showRegister']);
Route::post('/register', [TenantController::class, 'register']);

// Tenant domain
Route::domain('{tenant}.' . env('APP_DOMAIN'))->group(function () {
    
    Route::get('/', [AuthController::class, 'loginForm']);
    Route::post('/login', [AuthController::class, 'login']);
    
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->middleware('auth');
});
