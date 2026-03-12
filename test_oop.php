<?php

require_once "app/interfaces/CrudInterface.php";
require_once "app/models/BaseModel.php";
require_once "app/models/Produk.php";
require_once "app/services/ProdukService.php";

use App\Models\Produk;
use App\Services\ProdukService;

$produk = new Produk();

echo $produk->read(1);

echo "<br>";

$service = new ProdukService();

echo $service->formatHarga(15000);