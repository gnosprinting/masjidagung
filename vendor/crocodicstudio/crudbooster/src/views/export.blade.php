<table>
  <tr>
    <td style="width:130">
      <img style="width:100" src="http://localhost/masjidagung/public/uploads/2021-07/logo-masjid-removebg-preview.png" alt="logo-bjb">
    </td>
    <td>
      <h3 style="text-align:center;text-transform: uppercase;">
        BADAN PENGELOLA <br>
        MASJID AGUNG "AL-MUNAWWARAH" <br>
        KOTA BANJARBARU
      </h3>
      <p style="text-align:center;">
        Alamat : Jl. Trikora, Kelurahan Kemuning Banjarbaru Selatan
      </p>
    </td>
  </tr>
</table>
<hr>
@if(Request::input('fileformat') == 'pdf')
    <h3 style="text-align:center;">{{Request::input('filename')}}</h3>
@endif

<table border='1' width='100%' cellpadding='3' cellspacing="0" style='border-collapse: collapse;font-size:12px'>
    <thead>
    <tr>
        <?php
        foreach ($columns as $col) {

            if (Request::get('columns')) {
                if (! in_array($col['name'], Request::get('columns'))) {
                    continue;
                }
            }
            $colname = $col['label'];
            echo "<th style='background:#eeeeee'>$colname</th>";
        }
        ?>
    </tr>
    </thead>
    <tbody>
    @if(count($result)==0)
        <tr class='warning'>
            <td colspan='{{count($columns)+1}}' align="center">No Data Avaliable</td>
        </tr>
    @else
        @foreach($result as $row)
            <tr>
                <?php
                foreach ($columns as $col) {

                    if (Request::get('columns')) {
                        if (! in_array($col['name'], Request::get('columns'))) {
                            continue;
                        }
                    }

                    $value = @$row->{$col['field']};
                    $title = @$row->{$title_field};

                    if (@$col['image']) {
                        if ($value == '') {
                            $value = "http://placehold.it/50x50&text=NO+IMAGE";
                        }
                        $pic = (strpos($value, 'http://') !== FALSE) ? $value : asset($value);
                        $pic_small = $pic;
                        if (Request::input('fileformat') == 'pdf') {
                            echo "<td><a data-lightbox='roadtrip' rel='group_{{$table}}' title='$col[label]: $title' href='".$pic."'><img class='img-circle' width='40px' height='40px' src='".$pic_small."'/></a></td>";
                        } else {
                            echo "<td>$pic</td>";
                        }
                    } elseif (@$col['download']) {
                        $url = (strpos($value, 'http://') !== FALSE) ? $value : asset($value);
                        echo "<td><a class='btn btn-sm btn-primary' href='$url' target='_blank' title='Download File'>Download</a></td>";
                    } else {

                        //limit character
                        if ($col['str_limit']) {
                            $value = trim(strip_tags($value));
                            $value = str_limit($value, $col['str_limit']);
                        }

                        if ($col['nl2br']) {
                            $value = nl2br($value);
                        }

                        if (Request::input('fileformat') == 'pdf') {
                            if (! empty($col['callback_php'])) {

                                foreach ($row as $k => $v) {
                                    $col['callback_php'] = str_replace("[".$k."]", $v, $col['callback_php']);
                                }
                                @eval("\$value = ".$col['callback_php'].";");
                            }

                            //New method for callback
                            if (isset($col['callback'])) {
                                $value = call_user_func($col['callback'], $row);
                            }
                        }

                        echo "<td>".$value."</td>";
                    }
                }
                ?>
            </tr>
        @endforeach
    @endif
    </tbody>
</table>
<?php
$ketua = DB::table('pengurus')
         ->where('jabatan_pengurus', '=', 'KETUA I')
         ->get();
$sekretaris = DB::table('pengurus')
         ->where('jabatan_pengurus', '=', 'SEKRETARIS')
         ->get();
foreach ($ketua as $k) {
  $ket['nama_pengurus'] = $k->nama_pengurus;
  $ket['jabatan_pengurus'] = $k->jabatan_pengurus;
}
foreach ($sekretaris as $s) {
  $sek['nama_pengurus'] = $s->nama_pengurus;
  $sek['jabatan_pengurus'] = $s->jabatan_pengurus;
}
?>
<table width='100%' cellpadding='3' cellspacing="0">
  <tr>
    <td colspan="3">
      <h4 style="text-align:center;">Banjarbaru, {{date('d M Y')}}</h4>
      <h4 style="text-align:center;">Badan Pengelola Masjid Agung Al-Munawwarah</h4>
    </td>
  </tr>
  <tr>
    <td>Mengetahui,</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>KETUA TA'MIR</td>
    <td></td>
    <td style="text-align:center;">{{$s->jabatan_pengurus}}</td>
  </tr>
  <tr>
    <td colspan="3">
      <br><br><br>
    </td>
  </tr>
  <tr>
    <td>{{$k->nama_pengurus}}</td>
    <td></td>
    <td style="text-align:center;">{{$s->nama_pengurus}}</td>
  </tr>
</table>
<script type="text/php">
    if ( isset($pdf) ) {
        $font = Font_Metrics::get_font("helvetica", "bold");
        $pdf->page_text(36, 18, "Page {PAGE_NUM} of {PAGE_COUNT}", $font, 6, array(0,0,0));
    }

</script>
