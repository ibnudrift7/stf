<?php 
$type = 'mahasiswa';
if (isset($_GET['type'])) {
    $type = htmlspecialchars($_GET['type']);
}
?>
<?php echo $this->renderPartial('//home/_top_berita_mnu', array('actives' => $type)); ?>

<section class="berita-detail-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-30">
                <h3>The Heights Turns 100</h3>
                <h5>TERAKHIR DITULIS</h5>
                <div class="tanggal">
                    <p>12 Mei 2019</p>
                </div>
            </div>
            <div class="col-md-30">
                <div class="box-content-topright">
                    <p>KOMUNITAS: <b><?php echo strtoupper($type) ?></b></p>
                </div>
            </div>
        </div>
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-content">
                    <div class="garis"></div>
                    <div class="image">
                        <img class="img img-fluid" src="<?php echo $this->assetBaseurl; ?>berita1.jpg" alt="">
                    </div>
                    <p>Aliquam sit amet hendrerit magna, ut dapibus mi. Ut vitae velit vitae diam interdum dignissim et in enim. Integer varius feugiat tincidunt. Maecenas condimentum purus ex, in accumsan ligula lobortis nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla blandit, lorem vel efficitur scelerisque, erat purus cursus mi, vitae hendrerit ex nisl et nisl. Praesent quis dapibus nisi. Suspendisse at egestas metus. In sit amet nibh tristique, laoreet massa non, interdum nibh. Praesent ullamcorper bibendum elit, congue hendrerit neque aliquam non. Etiam nec pretium ante. Aenean in feugiat risus, non aliquam augue. Nunc quis pulvinar dui. Phasellus facilisis nisi nec leo tristique, a gravida massa blandit. Sed condimentum fringilla orci eget imperdiet.</p>
                    <p>
                    Donec pharetra, nibh at commodo bibendum, nunc lacus sagittis eros, sit amet vehicula tortor enim scelerisque erat. Sed erat ex, tristique vitae nisl id, auctor hendrerit dolor. Pellentesque vitae metus quis augue rhoncus tincidunt. Quisque faucibus erat a porta fringilla. Phasellus pretium lectus vel massa dictum, in eleifend ex sodales. Proin magna dui, feugiat non lacus non, feugiat maximus purus. Proin elementum eget sapien et facilisis. Quisque porta elit quis volutpat eleifend. Mauris et enim nec lectus efficitur faucibus vel sed ex. Phasellus nec porttitor eros. Donec quis justo at lorem lacinia egestas. Etiam diam ligula, vestibulum in justo sit amet, molestie vestibulum urna. Nulla ut rhoncus nunc. Mauris condimentum at dolor et pulvinar.</p>
                    <div class="kembali">
                        <a href="#" onclick="window.history.back();"><img class="img img-fluid" src="<?php echo $this->assetBaseurl; ?>chevron-thin-left-copy.png" alt=""><p>Kembali</p></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="home-sec-1">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <h4>BERITA LAINNYA</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-md-20">
                <div class="box-content">
                    <div class="image">
                        <img class="img img-fluid w-100" src="<?php echo $this->assetBaseurl; ?>home1.jpg" alt="" >
                    </div>
                    <div class="title">
                        <p>The Heights Turns 100</p>
                    </div>
                    <div class="subtittle">
                        <p>A century of breaking news for Boston College’s undergraduate paper.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-20">
                <div class="box-content">
                    <div class="image">
                        <img class="img img-fluid w-100" src="<?php echo $this->assetBaseurl; ?>home2.jpg" alt="" alt="" >
                    </div>
                    <div class="title">
                        <p>Weeks of welcome</p>
                    </div>
                    <div class="subtittle">
                        <p>New enhancements to BC's annual rite of introduction for first-year students.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-20">
                <div class="box-content">
                    <div class="image">
                    <img class="img img-fluid w-100" src="<?php echo $this->assetBaseurl; ?>home3.jpg" alt="" alt="" >
                    </div>
                    <div class="title">
                        <p>Learning from others: giving back</p>
                    </div>
                    <div class="subtittle">
                        <p>BC graduate Joseph Rizzuto ’15, now in medical school, is creating his own service-learning tradition in Nepal.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-60">
                    <button class="lihatsemua"><a href="#"><p>Lihat Semua Berita</p></a></button>
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