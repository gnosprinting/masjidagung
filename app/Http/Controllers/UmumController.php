<?php

namespace App\Http\Controllers;

use Request;
use DB;

class UmumController extends Controller
{
  public function index() {
      //mengambil data dari table profil
    	$profil = DB::table('profil')->get();
    	// $pengajian = DB::table('kegiatan_pengajian')->get();
      $pengajian = DB::table('detail_kegiatan_pengajian')
            ->join('kegiatan_pengajian', 'detail_kegiatan_pengajian.id_kegiatan_pengajian', '=', 'kegiatan_pengajian.id')
            ->join('guru', 'detail_kegiatan_pengajian.id_guru', '=', 'guru.id')
            ->select(DB::raw("GROUP_CONCAT(guru.nama_guru SEPARATOR ' / ') AS `nama_guru`, kegiatan_pengajian.nama_kegiatan, kegiatan_pengajian.Hari, kegiatan_pengajian.jam"))
            ->groupBy('id_kegiatan_pengajian')
            ->get();

    	// mengirim data profil ke view index
    	return view('umum',['profil' => $profil],['pengajian' => $pengajian]);
      // return view('umum');
  }
}
