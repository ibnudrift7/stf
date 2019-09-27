<section class="home-sec-1">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <h4>Berita Sekolah Tinggi Filsafat Driyarkara</h4>
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
        <div class="row">

            <?php foreach ($data as $key => $value): ?>
            <div class="col-md-20">
                <div class="box-content">
                    <div class="image">
                        <a href="<?php echo CHtml::normalizeUrl(array('/home/komunitasberitadetail', 'type'=> 'berita')); ?>"><img class="img img-fluid w-100" src="<?php echo $this->assetBaseurl; ?><?php echo $value['pict'] ?>" alt="" ></a>
                    </div>
                    <div class="title">
                        <p>
                            <a href="<?php echo CHtml::normalizeUrl(array('/home/komunitasberitadetail', 'type'=> 'berita')); ?>"><?php echo $value['title'] ?></a>
                        </p>
                    </div>
                    <div class="subtitle">
                        <p><?php echo $value['desc'] ?></p>
                    </div>
                </div>
            </div>
            <?php endforeach ?>

            <div class="row">
                <div class="col-md-60">
                    <button class="lihatsemua"><a href="<?php echo CHtml::normalizeUrl(array('/home/komunitasberita')); ?>"><p>Lihat Semua Berita</p></a></button>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="home-sec-2">
    <div class="prelative container">
        <div class="py-3"></div>
        <div class="row">
            <div class="col-md-60">
                <div class="box-content-atas">
                    <h3>Alumni Lulusan STF Driyarkara mengejar mimpi dan karirnya</h3>
                    <a href="#">
                        <p>Lihat seluruh testimoni</p>
                        <img class="img img-fluid " src="<?php echo $this->assetBaseurl; ?>chevron-thin-right-copy.png" alt=""> 
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-15 col-30">
                <div class="box-content">
                    <div class="desk">
                        <p>Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.</p>
                    </div>
                    <div class="gambar">
                        <img  class="img img-fluid " src="<?php echo $this->assetBaseurl; ?>homsec21.jpg" alt="">
                    </div>
                    <div class="nama">
                        <p>Rita Marsusiana</p>
                    </div>
                    <div class="jabatan">
                        <p>Direktur PT. Agengrandhu Jolotundo</p>
                    </div>
                </div>
            </div>
            <div class="col-md-15 col-30">
                <div class="box-content">
                    <div class="desk">
                        <p>Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.</p>
                    </div>
                    <div class="gambar">
                        <img  class="img img-fluid " src="<?php echo $this->assetBaseurl; ?>homesec22.jpg" >
                    </div>
                    <div class="nama">
                        <p>Rita Marsusiana</p>
                    </div>
                    <div class="jabatan">
                        <p>politikus</p>
                    </div>
                </div>
            </div>
            <div class="col-md-15 col-30">
                <div class="box-content">
                    <div class="desk">
                        <p>Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.</p>
                    </div>
                    <div class="gambar">
                        <img  class="img img-fluid " src="<?php echo $this->assetBaseurl; ?>homesec23.jpg" >
                    </div>
                    <div class="nama">
                        <p>Andreana Sutarja</p>
                    </div>
                    <div class="jabatan">
                        <p>Direktur PT. Makmur sentosa</p>
                    </div>
                </div>
            </div>
            <div class="col-md-15 col-30">
                <div class="box-content">
                    <div class="desk">
                        <p>Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.</p>
                    </div>
                    <div class="gambar">
                        <img  class="img img-fluid " src="<?php echo $this->assetBaseurl; ?>homsec21.jpg" >
                    </div>
                    <div class="nama">
                        <p>Rita Marsusiana</p>
                    </div>
                    <div class="jabatan">
                        <p>politikus</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="home-sec-3">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-30">
                <div class="box-content-left">
                    <h3>Aktifitas di STF Driyarkara</h3>
                    <h5>Info Kampus</h5>
                    <div class="box-caption">
                        <h6>Pendaftaran Program Doktor</h6>
                        <p>Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.</p>
                    </div>
                    <div class="box-caption">
                        <h6>Pendaftaran Program Pascasarjana</h6>
                        <p>Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.</p>
                    </div>
                    <div class="box-caption">
                        <h6>Pendaftaran MAHASISWA BARU</h6>
                        <p>Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.</p>
                    </div>
                    <button class="button-info">
                        <a href="<?php echo CHtml::normalizeUrl(array('/home/tentanginfo')); ?>"><p>Lihat Semua Info Kampus</p></a>
                    </button>
                </div>
            </div>
            <div class="col-md-30">
                <div class="box-content-right">
                    <h4>Kegiatan Sekolah</h4>
                    <div class="row no-gutters">
                        <div class="col-md-6 col-6">
                            <div class="images">
                                <img src="<?php echo $this->assetBaseurl; ?>square-tgl.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-md-54 col-54">
                            <div class="kalender">
                                <h5>Pendaftaran Program Doktor</h5>
                                <p>13.00 pm - selesai</p>
                            </div>
                        </div>
                    </div>
                    <div class="garis"></div>
                    <div class="row no-gutters">
                        <div class="col-md-6 col-6">
                            <div class="images">
                                <img src="<?php echo $this->assetBaseurl; ?>square-tgl.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-md-54 col-54">
                            <div class="kalender">
                                <h5>PEKAN OLAH RAGA DRIYAKARA</h5>
                                <p>13.00 pm - selesai</p>
                            </div>
                        </div>
                    </div>
                    <div class="garis"></div>
                    <div class="row no-gutters">
                        <div class="col-md-6 col-6">
                            <div class="images">
                                <img src="<?php echo $this->assetBaseurl; ?>square-tgl.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-md-54 col-54">
                            <div class="kalender">
                                <h5>Pendaftaran MAHASISWA BARU</h5>
                                <p>13.00 pm - selesai</p>
                            </div>
                        </div>
                    </div>
                    <div class="garis"></div>
                    <div class="row no-gutters">
                        <div class="col-md-6 col-6">
                            <div class="images">
                                <img src="<?php echo $this->assetBaseurl; ?>square-tgl.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-md-54 col-54">
                            <div class="kalender">
                                <h5>RAPAT UMUM DOSEN SEMESTER GENAP</h5>
                                <p>13.00 pm - selesai</p>
                            </div>
                        </div>
                    <div class="garis"></div>
                    </div>
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
                        <div class="col-md-20 col-60">
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
                        <div class="col-md-20 col-60">
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
                        <div class="col-md-20 col-60">
                            <button type="submit" class="submit"><p>daftarkan diri anda</p></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>