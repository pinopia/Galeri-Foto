<style>
    .btn-custom {
            border: 1px solid #D2D4D6;
        }

  /* kalau aktif pas diklik, kalau focus pas discroll drpdwn nya */
    .btn-custom:hover,
    .btn-custom:active, 
    .btn-custom:focus {
        background-color: #561C24 !important;
        color: white;
    }
    
</style>

<div class="container">
    <div class="row">
        <div class="col-4">
        </div>
        <div class="col-4">
            <!-- ini adalah ghaib -->
        </div>
        <div class="col-4">
            <form action="?" method="get">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Cari..." name="search" value="<?php request()->search ?>">
                    <div class="input-group-append">
                        <button class="btn btn-custom" type="submit"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>