<?php

namespace App\Imports;

use App\Models\RefReligion;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class RefReligionImport implements ToModel, WithStartRow
{
     /**
     * startRow
     *
     * @return int
     */
    public function startRow(): int
    {
        return 3;
    }

    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new RefReligion([
            'id' => $row[0],
            'title' => $row[1],
            'slug' => Str::random(10),
        ]);
    }
}
