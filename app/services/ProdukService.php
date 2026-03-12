<?php

namespace App\Services;

class ProdukService {

    public function hitungDiskon($harga, $diskon)
    {
        return $harga - ($harga * $diskon / 100);
    }

    public function formatHarga($harga)
    {
        return "Rp " . number_format($harga,0,',','.');
    }

}