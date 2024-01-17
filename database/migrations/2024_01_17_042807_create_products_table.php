<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('product_name');
            $table->text('product_desc');
            $table->timestamps();
        });

        Schema::create('brands', function (Blueprint $table) {
            $table->id();
            $table->foreignId('product_id')->constrained();
            $table->string('brand_name');
            $table->text('brand_detail');
            $table->string('brand_image');
            $table->decimal('price', 8, 2);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('brands');
        Schema::dropIfExists('products');
    }
}