<?php

namespace app\models;

use App\Models\BaseModel;
use App\Interfaces\CrudInterface;

class Produk extends BaseModel implements CrudInterface {

    public $nama;
    public $harga;

    public function __construct()
    {
        $this->table = "produk";
    }

    public function create($data)
    {
        return "Create produk";
    }

    public function read($id)
    {
        return "Read produk dengan ID: " . $id;
    }

    public function update($id, $data)
    {
        return "Update produk dengan ID: " . $id;
    }

    public function delete($id)
    {
        return "Delete produk dengan ID: " . $id;
    }

}