<?php echo $this->renderPartial('//home/_top_akademik_mnu', array('actives' => 'program-sarjana')); ?>

<section class="program-sarjana-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-judul">
                    <h4>PROGRAM SARJANA</h4>
                    <p>Silahkan melihat program studi akademik Program Pasca Sarjana di Sekolah Tinggi Filsafat Driyarkara:</p>
                </div>
                <div class="box-content">
                    <div class="garis"></div>
                    <h5>Ilmu Teologi - Program Studi S1</h5>
                    <p>Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero. Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.</p>
                    <button class="baca"><a href="<?php echo CHtml::normalizeUrl(array('/home/akademikprogramdetil', 'name'=>'Ilmu Teologi - Program Studi S1', 'type'=>'program-sarjana')); ?>">Baca Lebih Lanjut</a></button>
                    <button class="daftar"><a href="#">Mendaftar</a></button>
                </div>
                <div class="box-content">
                    <div class="garis"></div>
                    <h5>Ilmu Filsafat - Program Studi S1</h5>
                    <p>Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero. Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.</p>
                    <button class="baca"><a href="<?php echo CHtml::normalizeUrl(array('/home/akademikprogramdetil', 'name'=>'Ilmu Filsafat - Program Studi S1', 'type'=>'program-sarjana')); ?>">Baca Lebih Lanjut</a></button>
                    <button class="daftar"><a href="#">Mendaftar</a></button>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="home-sec-4">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-23">
                <div class="box-content-left">
                    <h3>PENDAFTARAN JURUSAN</h3>
                    <p>Hampir 95% Mahasiswa Internasional Sekolah Tinggi Filsafat Driyarkara merekomendasikan kepada siswa lain untuk belajar Filsafat di tempat kami.</p>
                </div>
            </div>
            <div class="col-md-37">
                <form>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <select class="form-control" id="exampleFormControlSelect1">
                                <option selected>Pilih Kategori Studi</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <select class="form-control" id="exampleFormControlSelect1">
                                <option selected>Pilih Jenjang Studi</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <button type="submit" class="submit"><p>daftarkan diri anda</p></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>