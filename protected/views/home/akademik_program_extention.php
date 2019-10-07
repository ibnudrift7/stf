<?php echo $this->renderPartial('//home/_top_akademik_mnu', array('actives' => 'extension-course')); ?>

<section class="program-extention-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-judul">
                    <h4>EXTENSION COURSE</h4>
                    <p>Silahkan melihat program studi akademik Program Pasca Sarjana di Sekolah Tinggi Filsafat Driyarkara:</p>
                </div>
                <div class="box-content">
                    <div class="garis"></div>
                    <h5>EXTENSION COURSE FILSAFAT</h5>
                    <p>Epistemologi, sebagai cabang ilmu filsafat yang secara kritis mengkaji hakikat, ruang lingkup, dan sumber serta dasar pertanggungjawaban atau justifikasi klaim kebenaran pengetahuan, dipahami secara berbeda dari masa ke masa.</p>
                    <?php // echo CHtml::normalizeUrl(array('/home/akademikprogramdetil', 'name'=> 'Extension Course 1', 'type'=>'extension-course')); ?>
                    <button class="baca"><a target="_blank" href="<?php echo Yii::app()->baseUrl.'/document/'.'ecfilsafat.pdf' ?>">Lihat Pdf</a></button>
                    <button class="daftar"><a href="#">Mendaftar</a></button>
                </div>
                <div class="box-content">
                    <div class="garis"></div>
                    <h5>EXTENSION COURSE TEOLOGI</h5>
                    <p>Presiden terpilih akan dilantik. Ia mengajak semua unsur bangsa untuk bersama membangun secara lahir-batin. Umat Katolik adalah unsur bangsa di tengah rakyat tersebut. Hikmat yang menjadi modal pembangunan bersama, perlu diolah bersama, dengan cukup dipahami.</p>
                    <button class="baca"><a target="_blank" href="<?php echo Yii::app()->baseUrl.'/document/'.'ecteologi.pdf' ?>">Lihat Pdf</a></button>
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