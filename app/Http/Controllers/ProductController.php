<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Models\Brand;


class ProductController extends Controller
{
    public function index()
    {
        $products = Product::with('brands')->get();

        return response()->json(['products' => $products]);
        //return view('sellers.indexpro', ['products' => $products]);

    }


    public function show(Product $product)
    {
        return response()->json($product);
    }


    public function create(Request $request)
    {
        $data = json_decode($request->getContent(), true);

        $product = Product::create([
            'product_name' => $data['product_name'],
            'product_desc' => $data['product_desc'],
        ]);

        foreach ($data['brands'] as $brandData) {
            Brand::create([
                'product_id' => $product->id,
                'brand_name' => $brandData['brand_name'],
                'brand_detail' => $brandData['brand_detail'],
                'brand_image' => $brandData['brand_image'],
                'price' => $brandData['price'],
            ]);
        }

        return response()->json(['message' => 'Product and brands created successfully']);
    }
    
    public function update(Request $request, Product $product)
    {
        $product->update([
            'product_name' => $request->input('product_name', $product->product_name),
            'product_desc' => $request->input('product_desc', $product->product_desc),
        ]);

        foreach ($request->input('brands', []) as $brandData) {
            Brand::updateOrCreate(
                ['id' => $brandData['id']], 
                [
                    'product_id' => $product->id,
                    'brand_name' => $brandData['brand_name'],
                    'brand_detail' => $brandData['brand_detail'],
                    'brand_image' => $brandData['brand_image'],
                    'price' => $brandData['price'],
                ]
            );
        }

        return response()->json($product, Response::HTTP_OK);
    }

    
    public function destroy(Product $product)
    {
        $productId = $product->id;

        Brand::where('product_id', $productId)->delete();

        $product->delete();

        return response()->json(['message' => 'Product deleted successfully'], );

    }
}
