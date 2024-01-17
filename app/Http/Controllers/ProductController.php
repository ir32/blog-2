<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Models\Brand;
use Illuminate\Support\Facades\Validator;


class ProductController extends Controller
{
    public function index()
    {
        $products = Product::with('brands')->get();

        return response()->json(['status' => 200, 'products' => $products]);
        //return view('sellers.indexpro', ['products' => $products]);

    }


    public function show(Product $product)
    {
        return response()->json($product);
    }


    public function create(Request $request)
    {
        // $validator = Validator::make($request->all(), [
        //     'product_name' => 'required|string|max:255',
        //     'product_desc' => 'required|string',
        //     'brands' => 'required|array',
        //     'brands.*.brand_name' => 'required|string|max:255',
        //     'brands.*.brand_detail' => 'required|string',
        //     'brands.*.price' => 'required|numeric',
        // ]);
    
        // if ($validator->fails()) {
        //     return response()->json(['error' => $validator->errors()], 400);
        // }    
        // $data = json_decode($request->getContent(), true);
        // $product = Product::create([
        //     'product_name' => $data['product_name'],
        //     'product_desc' => $data['product_desc'],
        // ]);
    
        // foreach ($data['brands'] as $brandData) {
        //     Brand::create([
        //         'product_id'    => $product->id,
        //         'brand_name'    => $brandData['brand_name'],
        //         'brand_detail'  => $brandData['brand_detail'],
        //         'brand_image'   => $brandData['brand_image'],
        //         'price'         => $brandData['price'],
        //     ]);
        // }
        
        // return response()->json(['message' => 'Product and brands created successfully', 'status' => 201]);
        $validator = Validator::make($request->all(), [
            'product_name' => 'required|string|max:255',
            'product_desc' => 'required|string',
            'brands' => 'required|array',
            'brands.*.brand_name' => 'required|string|max:255',
            'brands.*.brand_detail' => 'required|string',
            'brands.*.price' => 'required|numeric',
            'brands.*.brand_image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // Assuming you are uploading image files
        ]);
    
        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }
    
        $data = $request->all();
        $product = Product::create([
            'product_name' => $data['product_name'],
            'product_desc' => $data['product_desc'],
        ]);
    
        foreach ($data['brands'] as $brandData) {
            $brand = Brand::create([
                'product_id'    => $product->id,
                'brand_name'    => $brandData['brand_name'],
                'brand_detail'  => $brandData['brand_detail'],
                'price'         => $brandData['price'],
                'brand_image'   => '',
            ]);
    
            $brandImage = $brandData['brand_image'];
            $imagePath = $this->uploadImage($brandImage);
            
            $brand->update(['brand_image' => $imagePath]);
        }
    
        return response()->json(['message' => 'Product and brands created successfully', 'status' => 201]);
    
    }

    private function uploadImage($image)
{
    $uploadPath = 'images';
    $newName = rand() . '.' . $image->getClientOriginalExtension();

    $image->move(public_path($uploadPath), $newName);

    return $uploadPath . '/' . $newName;
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
