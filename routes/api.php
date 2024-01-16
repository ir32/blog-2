<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;

Route::middleware('auth:sanctum')->get('/user', function () {
    return auth()->user();
});

//Route::apiResource('products', ProductController::class);
// Route::get('/products', [ProductController::class, 'index']);
Route::post('/products', [ProductController::class, 'store']);
Route::get('/products/{id}', [ProductController::class, 'show']);
Route::put('/products/{id}', [ProductController::class, 'update']);
Route::delete('/products/{id}', [ProductController::class, 'destroy']);



use App\Http\Controllers\Api\Auth\RegisterController;

use App\Http\Controllers\Api\Auth\LoginController;

Route::post('/register', [RegisterController::class, 'register']);
Route::post('/register_seller', [RegisterController::class, 'seller_register']);

Route::get('/all_seller', [RegisterController::class, 'all_seller']);

Route::post('/login', [LoginController::class, 'login']);

Route::middleware(['auth.api'])->group(function () {
    Route::get('/products', [ProductController::class, 'index']);
});