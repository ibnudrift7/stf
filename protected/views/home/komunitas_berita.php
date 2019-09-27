<?php 
$type = 'mahasiswa';
if (isset($_GET['type'])) {
    $type = htmlspecialchars($_GET['type']);
}
?>
<?php echo $this->renderPartial('//home/_top_berita_mnu', array('actives' => $type)); ?>

<section class="komunitas-sec-1">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <h4>SEMUA BERITA</h4>
            </div>
        </div>
        <?php 
        $data = array(
                    array(
                        'pict'=>'home1.jpg',
                        'title'=>'The Heights Turns 100',
                        'desc'=>'A century of breaking news for Boston College’s undergraduate paper.',
                    ),
                    array(
                        'pict'=>'home2.jpg',
                        'title'=>'Weeks of welcome',
                        'desc'=>'New enhancements to BC`s annual rite of introduction for first-year students.',
                    ),
                    array(
                        'pict'=>'home3.jpg',
                        'title'=>'Learning from others: giving back',
                        'desc'=>'BC graduate Joseph Rizzuto ’15, now in medical school, is creating his own service-learning tradition in Nepal.',
                    ),
                );
        ?>
        <?php for ($i=1; $i < 4; $i++) { ?>
        <div class="row">
            <?php foreach ($data as $key => $value): ?>
            <div class="col-md-20">
                <div class="box-content">
                    <div class="image">
                        <a href="<?php echo CHtml::normalizeUrl(array('/home/komunitasberitadetail', 'type'=> $type)); ?>"><img class="img img-fluid w-100" src="<?php echo $this->assetBaseurl; ?><?php echo $value['pict'] ?>" alt="" ></a>
                    </div>
                    <div class="title">
                        <p>
                            <a href="<?php echo CHtml::normalizeUrl(array('/home/komunitasberitadetail', 'type'=> $type)); ?>"><?php echo $value['title'] ?></a>
                        </p>
                    </div>
                    <div class="subtitle">
                        <p><?php echo $value['desc'] ?></p>
                    </div>
                </div>
            </div>
            <?php endforeach ?>

        </div>
        <?php } ?>
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