<?php

namespace app\models;

class BaseModel {

    protected $table;

    public function getTable()
    {
        return $this->table;
    }

}