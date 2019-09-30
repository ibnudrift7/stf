<?php 
$type = 'perpustakaan';
$names = 'perpustakaan';
if (isset($_GET['type'])) {
    $type = htmlspecialchars($_GET['type']);
    $names = str_replace('-', ' ', $type);
}
$this->pageTitle = ucwords($names).' '.$this->pageTitle;
?>
<?php echo $this->renderPartial('//home/_top_penelitian_mnu', array('actives' => $type)); ?>

<section class="penelitian-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-content">
                    <h3><?php echo strtoupper($names); ?></h3>
                    <?php 
                    $link = '#';
                    if ($type == 'perpustakaan') {
                        $link = 'https://17813.rmwebopac.com';
                    } else if($type == 'jurnal-diskursus') {
                        $link = 'http://driyarkara.ac.id/jurnaldiskursus';
                    } else if($type == 'publikasi') {
                        $link = 'http://driyarkara.ac.id/publication';
                    } else if($type == 'repositori') {
                        $link = 'http://driyarkara.ac.id/repositori';
                    }
                    ?>
                    <p>Silahkan <a target="_blank" href="<?php echo $link ?>">klik di sini</a>  untuk masuk ke Perpustakaan Sekolah Tinggi Filsafat Driyarkara</p>
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