<?php

// app/Http/Controllers/SellerController.php

namespace App\Http\Controllers;

use App\Models\User;

class SellerController extends Controller
{
    public function getSellers()
    {
        $sellers = User::where('role', 'seller')->paginate(10); 
        return view('sellers.index', ['sellers' => $sellers]);
    }
}
