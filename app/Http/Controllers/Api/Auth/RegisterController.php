<?php
namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Auth\Events\Registered;

class RegisterController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:users|max:255',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 422);
        }

        $user = $this->create($request->all());

        $token = $user->createToken('Laravel9PassportAuth')->accessToken;

        return response()->json(['user' => $user, 'token' => $token, 'message' => 'User registered successfully']);

    }

    protected function create(array $data)
    {
        // Add 'role' with a default value of 'admin'
        $data['role'] = 'admin';

        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'role' => $data['role'],
        ]);
    }

    public function seller_register(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:users|max:255',
            'password' => 'required|string|min:6',
            'mobile' => 'required|string',
            'country' => 'required|string',
            'state' => 'required|string',
            'skills' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 422);
        }

        $user = $this->createSeller($request->all());

        return response()->json(['status' => 200,'user' => $user, 'message' => 'Seller registered successfully']);
    }

    protected function createSeller(array $data) {
        // Add 'role' with a value of 'user'
        $data['role'] = 'seller';

        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'mobile' => $data['mobile'],
            'country' => $data['country'],
            'state' => $data['state'],
            'skills' => $data['skills'],
            'role' => $data['role'],
        ]);
    }
    public function all_seller(Request $request) { 
        $sellers = User::where('role', 'seller')->get();

        return response()->json(['sellers' => $sellers], 200);
    }



}