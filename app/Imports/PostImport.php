<?php

namespace App\Imports;

use App\Models\Post;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class PostImport implements ToModel, WithStartRow
{
    /**
     * startRow
     *
     * @return int
     */
    public function startRow(): int
    {
        return 2;
    }
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Post([
            'author_id' => $row[1],
            'title' => $row[2],
            'slug' => Str::slug($row[2]),
            'content'     => $row[3],  
            'categorypost_id' => $row[4],
            'status'     => $row[5], 
            // 'created_at'     => $row[6], 
            // 'updated_at'     => $row[6], 
        ]);
    }
}
