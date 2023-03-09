<?php

namespace App\Exports;

use App\Models\Encode;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;




class EncodeExport implements FromCollection, WithMapping, WithHeadings, WithStyles
{
    use Exportable;
    private $count = 1;
    public function collection()
    {
        // return Encode::orderBy('client_name', 'asc')->get();
        return Encode::all();
    }

    public function map($row): array
    {
        return [
            $this->count++,
            $row->client_name,
            $row->address,
            $row->area,
            $row->telephone,
            $row->homepage,
            $row->category,
            $row->open_hours,
            $row->facebook_fanpage_url,
            $row->memo,
        ];
    }
    public function headings(): array
    {
        return [
            'No.',
            'Client Name',
            'Address',
            'Area',
            'Telephone',
            'Homepage',
            'Category',
            'Open Hours',
            'Facebook Fanpage URL',
            'Memo',
        ];
    }
    public function styles(Worksheet $sheet)
    {
        $sheet->getStyle('A1:Z1')->getFont()->setBold(true);
    }
}
