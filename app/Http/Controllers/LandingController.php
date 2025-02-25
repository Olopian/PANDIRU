<?php

namespace App\Http\Controllers;

use App\Models\AlurPendaftaran;
use App\Models\CalonPeserta;
use App\Models\CategoryBiaya;
use App\Models\CategoryPersyaratan;
use App\Models\Jadwal;
use App\Models\JadwalTest;
use App\Models\Siswa;
use Database\Seeders\CategoryPersyaratanSeeder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LandingController extends Controller
{
    public function index()
    {
        return view('user.index');
    }
    public function daftar()
    {
        return view('user.daftar');
    }
    public function syarat_pendaftaran()
    {
        $data['category'] = CategoryPersyaratan::orderBy('id', 'ASC')->get();
        return view('user.syarat_pendaftaran', compact('data'));
    }
    public function jadwal()
    {
        $data = Jadwal::first();
        return view('user.jadwal', compact('data'));
    }
    public function biaya()
    {
        $data['category'] = CategoryBiaya::orderBy('id', 'ASC')->get();
        return view('user.biaya', compact('data'));
    }
    public function alur_pendaftaran()
    {
        $data = AlurPendaftaran::first();
        return view('user.alur_pendaftaran', compact('data'));
    }
    public function cek_status_pendaftaran()
    {
        if (isset($_GET['pencarian'])) {
            if ($_GET['pencarian'] == '') {
                $data = null;
            } else {
                $data = DB::table('calon_pesertas as cp')
                    ->select(
                        'cp.*',
                        's.*'
                    )
                    ->join('siswas as s', 's.id', 'cp.id_siswa')
                    ->orWhere('s.nama_lengkap', 'like', '%' .  $_GET['pencarian'] . '%')
                    ->orWhere('s.nisn', 'like', '%' .  $_GET['pencarian'] . '%')
                    ->orWhere('s.no_kk', 'like', '%' .  $_GET['pencarian'] . '%')
                    ->orWhere('cp.no_pendaftaran', 'like', '%' .  $_GET['pencarian'] . '%')
                    ->orWhere('cp.no_peserta', 'like', '%' .  $_GET['pencarian'] . '%')
                    ->get();
            }
        } else {
            $data = null;
        }
        $jadwaltest = JadwalTest::first();
        return view('user.cek_status_daftar', compact('data', 'jadwaltest'));
    }
    public function form_pendaftaran_siswa(Request $request)
    {
        try {
            if ($request->name == null) {
                return redirect()->back()->with(['error' => 'Gagal, nama lengkap masih kosong']);
            } else if ($request->tempat_lahir == null) {
                return redirect()->back()->with(['error' => 'Gagal, tempat lahir masih kosong']);
            } else if ($request->tanggal_lahir == null) {
                return redirect()->back()->with(['error' => 'Gagal, tanggal lahir masih kosong']);
            } else if ($request->jenis_kelamin == null) {
                return redirect()->back()->with(['error' => 'Gagal, jenis kelamin masih kosong']);
            } else if ($request->agama == null) {
                return redirect()->back()->with(['error' => 'Gagal, agama masih kosong']);
            } else if ($request->telepon == null) {
                return redirect()->back()->with(['error' => 'Gagal, telepon masih kosong']);
            } else if ($request->alamat_sekarang == null) {
                return redirect()->back()->with(['error' => 'Gagal, alamat masih kosong']);
            } else if ($request->no_kk == null) {
                return redirect()->back()->with(['error' => 'Gagal, no kartu keluarga (KK) masih kosong']);
            } else if ($request->nama_ayah == null) {
                return redirect()->back()->with(['error' => 'Gagal, nama ayah masih kosong']);
            } else if ($request->pekerjaan_ayah == null) {
                return redirect()->back()->with(['error' => 'Gagal, pekerjaan ayah masih kosong']);
            } else if ($request->penghasilan_ayah == null) {
                return redirect()->back()->with(['error' => 'Gagal, penghasilan ayah masih kosong']);
            } else if ($request->nama_ibu == null) {
                return redirect()->back()->with(['error' => 'Gagal, nama ibu masih kosong']);
            } else if ($request->pekerjaan_ibu == null) {
                return redirect()->back()->with(['error' => 'Gagal, pekerjaan ibu masih kosong']);
            } else if ($request->penghasilan_ibu == null) {
                return redirect()->back()->with(['error' => 'Gagal, penghasilan ibu masih kosong']);
            } else if ($request->telepon_wali == null) {
                return redirect()->back()->with(['error' => 'Gagal, nomor telepon ayah/ibu masih kosong']);
            } else if ($request->asal_sekolah == null) {
                return redirect()->back()->with(['error' => 'Gagal, asal sekolah masih kosong']);
            } else if ($request->nisn == null) {
                return redirect()->back()->with(['error' => 'Gagal, nisn masih kosong']);
            } else if ($request->jurusan == null) {
                return redirect()->back()->with(['error' => 'Gagal, jurusan masih kosong']);
            } else if ($request->jalur == null) {
                return redirect()->back()->with(['error' => 'Gagal, jalur masih kosong']);
            }

            if ($request->ijazah) {
            } else {
                return redirect()->back()->with(['error' => 'Gagal, Ijazah masih kosong']);
            }
            if ($request->photo) {
            } else {
                return redirect()->back()->with(['error' => 'Gagal, Foto masih kosong']);
            }
            $Siswa = Siswa::create([
                'ijazah' => $request->ijazah,
                'piagam' => $request->piagam,
                'photo' => $request->file_foto,
                'nama_lengkap' => $request->name,
                'tempat_lahir' => $request->tempat_lahir,
                'tanggal_lahir' => date('Y-m-d', strtotime($request->tempat_lahir)),
                'jenis_kelamin' => $request->jenis_kelamin,
                'agama' => $request->agama,
                'nisn' => $request->nisn,
                'email' => $request->email,
                'telepon' => $request->telepon,
                'asal_sekolah' => $request->asal_sekolah,
                'alamat' => $request->alamat_sekarang,
                'no_kk' => $request->no_kk,
                'nama_ayah' => $request->nama_ayah,
                'telepon_ayah' => $request->telepon_wali,
                'pekerjaan_ayah' => $request->pekerjaan_ayah,
                'nama_ibu' => $request->nama_ibu,
                'telepon_ibu' => $request->telepon_wali,
                'pekerjaan_ibu' => $request->pekerjaan_ibu,
                'penghasilan_perbulan' => $request->penghasilan_ayah + $request->penghasilan_ibu,
                'bidang_prestasi' => $request->bidang_prestasi,
                'tingkat_prestasi' => $request->tingkat_prestasi,
                'peringkat' => $request->peringkat,
                'tahun' => $request->tahun,
            ]);
            $max_id =  DB::table('calon_pesertas as d')
                ->select('d.*')
                ->latest('no_peserta')->first();
            if ($max_id == null) {
                $max_id = '000001';
            } else {
                $max_id = explode('-', $max_id->no_peserta);
                $max_id = (int)$max_id[1] + 1;
            }
            $number = sprintf("%05s", $max_id);
            $CalonPeserta = CalonPeserta::create([
                'jalur' => $request->jalur,
                'no_peserta' => 'DFT-' . $number,
                'no_pendaftaran' => 'REG-' . $number,
                'jurusan' => $request->jurusan,
                'status' => 'Calon Pendaftar',
                'id_siswa' => $Siswa->id,
            ]);

            if ($request->photo != null) {
                if ($request->hasFile('photo')) {
                    $file = $request->file('photo');
                    $filename = 'foto_' . $Siswa->id . '_' . $Siswa->nama_lengkap . '.' . $file->getClientOriginalExtension();
                    $request->file('photo')->move('assets/uploads/calon siswa/', $filename);
                    $Siswa->photo = $filename;
                    $Siswa->save();
                }
            }
            if ($request->ijazah != null) {
                if ($request->hasFile('ijazah')) {
                    $file = $request->file('ijazah');
                    $filename = 'ijazah_' . $Siswa->id . '_' . $Siswa->nama_lengkap . '.' . $file->getClientOriginalExtension();
                    $request->file('ijazah')->move('assets/uploads/calon siswa/', $filename);
                    $Siswa->ijazah = $filename;
                    $Siswa->save();
                }
            }
            if ($request->piagam != null) {
                if ($request->hasFile('piagam')) {
                    $file = $request->file('piagam');
                    $filename = 'piagam_' . $Siswa->id . '_' . $Siswa->nama_lengkap . '.' . $file->getClientOriginalExtension();
                    $request->file('piagam')->move('assets/uploads/calon siswa/', $filename);
                    $Siswa->piagam = $filename;
                    $Siswa->save();
                }
            }
            return redirect()->route('cek_status_pendaftaran')->with(['success' => 'Berhasil mengirim data']);
        } catch (\Throwable $th) {
            return redirect()->back()->with(['error' => 'Gagal, Periksa kembali data yang anda kirim']);
        }
    }
    public function print_kartu_peserta($nama_lengkap, $id)
    {
        $data = DB::table('siswas as cp')
            ->select(
                's.*',
                'cp.*'
            )
            ->join('calon_pesertas as s', 's.id_siswa', 'cp.id')
            ->where('s.id_siswa', $id)
            ->first();
        return view('user.print_kartu_peserta', compact('data'));
    }
}
