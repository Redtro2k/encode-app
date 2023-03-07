<?php
namespace App\Traits;
trait AddRecordTraits
{
    public function createNewRecord($records, $model){
        $model::create($records);
    }

    public function updateExistingRecord($id, $records, $model){
        $model::where('id', $id)->update($records);
    }
}
