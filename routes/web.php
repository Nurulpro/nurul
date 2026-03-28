<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TenantController;
use App\Http\Controllers\AuthController;

Route::get('/', function () {
    return view('welcome');
});

// Show login form (GET)
Route::get('/login', function () {
    return view('login');
})->name('login');

// Handle login submit (POST)
Route::post('/login', [AuthController::class, 'login']);
Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth');

// Main domain (registration)
Route::get('/', [TenantController::class, 'welcome']);
Route::get('/sign-up', [TenantController::class, 'showRegister']);
Route::post('/register', [TenantController::class, 'register']);

// Tenant domain
Route::domain('{tenant}.' . env('APP_DOMAIN'))->group(function () {
    
    Route::get('/', [AuthController::class, 'loginForm']);
   
    
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->middleware('auth');
});
