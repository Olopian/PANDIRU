<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="generator" content="HubSpot">

        <meta name="author" content="ViProject | Muhammad Nafi Maula Hakim">
        <meta name="description" content="Aplikasi voting berbasis web, mempermudah pengelola untuk melakukan pemilihan umum (voting) secara custom, realtime, akurat dan terstruktur">
        <meta name="robots" content="noindex,nofollow">

        <link rel="kanonik" href="" >
        <title>
            Surat Pernyataan Orang Tua Wali - {{ $data->nama_lengkap }}
        </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style>
            html,body{
                font-family: 'Times New Roman' !important;
                font-size:12px !important;
            }
            td{
                border:none !important;
                padding-left:15px;
                padding-bottom:5px
            }
            table{
                border:none !important;
                padding:10px;
            }
            .t-bottom{
                border-style: dotted  !important;
                border-width: 0px 0px 1.5px 0px !important;
            }
        </style>
        <script>
            var css = '@page { size: A4 potrait; }',
            head = document.head || document.getElementsByTagName('head')[0],
            style = document.createElement('style');
            style.type = 'text/css';
            style.media = 'print';
            if (style.styleSheet){
                style.styleSheet.cssText = css;
            } else {
                style.appendChild(document.createTextNode(css));
            }
            head.appendChild(style);
            window.print();
        </script>
    </head>
    <body>
        <table class="w-100 mb-2 ">
            <tbody>
                <tr>
                    <td>
                        <img src="{{ asset('assets/images/logo.png') }}" alt="placeholder" style="float:right:object-fit: cover !important;width:60px !important;height:60px !important;">
                    </td>
                    <td>
                        <p class="mb-0 fw-bold h2 text-center">YAYASAN PERGURUAN INDONESIA MEMBANGUN</p>
                        <p class="mb-0 fw-bold h2 text-center">( YAPIM )</p>
                        <p class="mb-0 fw-bold h4 text-center">SMP-SMA YAPIM BIRU-BIRU</p>
                        <P class="mb-0 text-center">Jln. Sidomulyo, Kec. Sibiru-biru, Kab. Deli Serdang, Sumatera Utara, 20355</P>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="border-style: double!important;border-width: 0px 0px 4px 0px !important;"></td>
                </tr>
            </tbody>
        </table>
        <br>
        <div class="row m-0">
            <div class="col-12">
                @php
                    $tahun = date('Y');
                @endphp
                <h4 class="text-center">
                    <u class="fw-bold">SURAT PERNYATAAN ORANG TUA / WALI</u>
                    <br> TAHUN PELAJARAN {{ $tahun }}/{{ $tahun+1 }}
                </h4>
            </div>
            <div class="col-12">
                <br>
                <h6 class="mb-2">Yang bertanda tangan dibawah ini :</h6>
                <table  class="w-100 mb-2 ">
                    <tbody>
                        <tr>
                            <td style="width:5%">1.</td>
                            <td style="width:40%">Nama Ayah / Ibu</td>
                            <td style="width: 2%">:</td>
                            <td style="width: 15%">{{ $data->nama_ayah }}</td>
                            <td style="width: 15%">/ {{ $data->nama_ibu }}</td>
                        </tr>
                        <tr>
                            <td style="width:5%">2.</td>
                            <td style="width:40%">Pekerjaan Ayah / Ibu</td>
                            <td style="width: 2%">:</td>
                            <td style="width: 20%">{{ $data->pekerjaan_ayah }}</td>
                            <td style="width: 20%">/ {{ $data->pekerjaan_ibu }}</td>
                        </tr>
                        <tr>
                            <td style="width:5%">3.</td>
                            <td style="width:40%">Alamat Ayah / Ibu</td>
                            <td style="width: 2%">:</td>
                            <td colspan="2">.............................................................................................</td>
                        </tr>
                        <tr>
                            <td style="width:5%"></td>
                            <td style="width:40%"></td>
                            <td style="width: 2%"></td>
                            <td colspan="2">.............................................................................................</td>
                        </tr>
                        <tr>
                            <td style="width:5%">4.</td>
                            <td style="width:40%">Telepon Ayah / Ibu</td>
                            <td style="width: 2%">:</td>
                            <td style="width: 20%">{{ $data->telepon_ayah }}</td>
                            <td style="width: 20%">/ {{ $data->telepon_ibu }}</td>
                        </tr>
                        <tr>
                            <td style="width:5%">5.</td>
                            <td style="width:40%">Agama Ayah / Ibu</td>
                            <td style="width: 2%">:</td>
                            <td style="width: 20%">Islam / Kristen Protestan / Khatolik / Konghucu / Hindu / Budha*</td>
                            <td style="width: 20%">/ Islam / Kristen Protestan / Khatolik / Konghucu / Hindu / Budha*</td>
                        </tr>
                        <tr>
                            <td style="width:5%">6.</td>
                            <td style="width:40%">Nama Peserta Didik</td>
                            <td style="width: 2%">:</td>
                            <td colspan="2">{{ $data->nama_lengkap }}</td>
                        </tr>
                        <tr>
                            <td style="width:5%">7.</td>
                            <td style="width:40%">Jenis Kelamin</td>
                            <td style="width: 2%">:</td>
                            <td colspan="2">{{  $data->jenis_kelamin == 'L' ? 'Laki-Laki' : 'Perempuan' }}</td>
                        </tr>
                        <tr>
                            <td style="width:5%">8.</td>
                            <td>Diterima di kelas / Peminatan</td>
                            <td style="width: 2%">:</td>
                            <td colspan="2">SMP / SMA*- .....................................................................</td>
                        </tr>
                        <tr>
                            <td style="width:5%">9.</td>
                            <td>Hubungan Keluarga dengan calon Peserta Didik</td>
                            <td style="width: 2%">:</td>
                            <td colspan="2">.............................................................................................</td>
                        </tr>
                    </tbody>
                </table>
                <h4 class="text-center py-2">
                    MENYATAKAN
                </h4>
                <h6 class="mb-4">Bahwa saya selaku orang tua / wali dari peserta didik yang bernama ................................................................................. kelas ....................... SMP / SMA* YAPIM BIRU-BIRU, Menyatakan dengan sesungguhnya :</h6>
                <h6 class="ps-5">1. &nbsp;Bersedia membimbing dan mengawasai peserta didik tersebut di atas untuk menaati tata tertib Sekolah;</h6>
                <h6 class="ps-5">2. &nbsp;Tidak keberatan peserta didik di atas menerima sanksi sesuai dengan ketentuan Sekolah;</h6><br>
                <h6 class="mb-2">Demikian surat pernyataan ini kami buat dengan sebenarnya dan penuh rasa tanggung jawab.</h6><br>
                <table  class="w-100 mb-2 ">
                    <tbody>
                        <tr>
                            <td class="text-center" style="width: 50%">Mengetahui</td>
                            <td class="text-center" style="width: 50%">Deli Serdang, {{ date('d') }} {{ date('M') }} {{ date('Y') }}</td>
                        </tr>
                        <tr>
                            <td class="text-center" style="width: 50%">Kepala Sekolah SMP-SMA YAPIM BIRU-BIRU</td>
                            <td class="text-center" style="width: 50%">Yang Membuat Pernyataan <br>Orang Tua / Wali Peserta Didik </td>
                        </tr>
                        <tr>
                            <td style="width: 50%"><br><br><br><br></td>
                            <td style="width: 50%"><br><br><br><br></td>
                        </tr>
                        <tr>
                            <td class="text-center" style="width: 50%">( .............................................. )</td>
                            <td class="text-center" style="width: 50%">( .............................................. )</td>
                        </tr>
                    </tbody>
                </table>
                <br>
                <h6 class="mb-2">Catatan : </h6>
                <h6 class="mb-1">"*" Bagian "Bintang" Coret Bagian Yang Tidak Penting.</h6>
                <h6 class="mb-1">Semua isian data harus diisi dengan lengkap dan jelas.</h6>
                <h6 class="mb-1">Penulisan nama Peserta Didik dan Orang Tua harus jelas dan sesuai dengan (Ijazah, Akta Kelahiran, Kartu Keluarga).</h6>
                <h6 class="mb-1">No. HP Orang Tua/Wali Siswa yang bisa dihubungi (aktif) ...............................</h6>
            </div>
        </div>
    </body>
</html>
