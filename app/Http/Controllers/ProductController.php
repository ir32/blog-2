<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return response()->json($products);
    }


    public function show(Product $product)
    {
        return response()->json($product);
    }


    public function store(Request $request)
    {
        $product = Product::create($request->all());
        return response()->json($product, Response::HTTP_CREATED);
    }

    
    public function update(Request $request, Product $product)
    {
        $product->update($request->all());
        return response()->json($product, Response::HTTP_OK);
    }

    
    public function destroy(Product $product)
    {
        $product->delete();
        return response()->json(null, Response::HTTP_NO_CONTENT);
    }
}
