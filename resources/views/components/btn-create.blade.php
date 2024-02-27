@props(['link'])
<a href="{{ $link }}" class="btn btn-tambah">
    <i class="fas fa-plus-circle"></i> Tambah
</a>

<style>
      .btn-tambah {
        background-color: #561C24 !important;
        color: white;
        }

  /* kalau aktif pas diklik, kalau focus pas discroll drpdwn nya */
    .btn-tambah:hover,
    .btn-tambah:active, 
    .btn-tambah:focus {
        background-color: #E8D8C4 !important;
        color: #561C24;
    }
    
</style>
