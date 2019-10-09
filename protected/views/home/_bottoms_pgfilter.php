
<section class="home-sec-4">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-23">
                <div class="box-content-left">
                    <?php if (Yii::app()->language == 'en'): ?>
                    <h3>REGISTRATION DEPARTMENT</h3>
                    <p>Nearly 95% of International Students Driyarkara Philosophy High School recommends to other students to study Philosophy at our place.</p>    
                    <?php else: ?>
                    <h3>PENDAFTARAN JURUSAN</h3>
                    <p>Hampir 95% Mahasiswa Internasional Sekolah Tinggi Filsafat Driyarkara merekomendasikan kepada siswa lain untuk belajar Filsafat di tempat kami.</p>
                    <?php endif ?>
                </div>
            </div>
            <div class="col-md-37">
                <form>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <select class="form-control" id="exampleFormControlSelect1">
                                <option selected><?php echo Tt::t('front', 'Pilih Kategori Studi') ?></option>
                                <option>S1</option>
                                <option>S2</option>
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <select class="form-control" id="exampleFormControlSelect1">
                                <option selected><?php echo Tt::t('front', 'Pilih Jenjang Studi') ?></option>
                                <option>Filsafat</option>
                                <option>Teologi</option>
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <button type="submit" class="submit"><p><?php echo Tt::t('front', 'daftarkan diri anda') ?></p></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
