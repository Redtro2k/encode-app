<?php
namespace App\Traits;
trait AddRecordTraits
{
    public function createNewRecord($records, $model){
        $model::create($records);
    }
}
