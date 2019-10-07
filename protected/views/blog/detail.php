<?php 
$type = 'mahasiswa';
if (isset($_GET['type'])) {
    $type = htmlspecialchars($_GET['type']);
}

$res_product = array(
              1=>'berita',
              2=>'mahasiswa',
              3=>'alumni',
              );
?>
<?php echo $this->renderPartial('//home/_top_berita_mnu', array('actives' => $type)); ?>

<section class="berita-detail-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-30">
                <h3><?php echo $data->description->title ?></h3>
                <h5>TERAKHIR DITULIS</h5>
                <div class="tanggal">
                    <p><?php echo date("d F Y", strtotime($data->date_input)) ?></p>
                </div>
            </div>
            <div class="col-md-30">
                <div class="box-content-topright">
                    <p>KOMUNITAS: <b><?php echo strtoupper($res_product[$data->topik_id]) ?></b></p>
                </div>
            </div>
        </div>
        <div class="row kecil blogs_detail_contents">
            <div class="col-md-60">
                <div class="box-content">
                    <div class="garis"></div>
                    <div class="image">
                        <img class="img img-fluid" src="<?php echo $this->assetBaseurl; ?>../../images/blog/<?php echo $data->image ?>" alt="">
                    </div>
                    
                    <?php echo $data->description->content; ?>

                    <div class="kembali">
                        <a href="#" onclick="window.history.back();"><img class="img img-fluid" src="<?php echo $this->assetBaseurl; ?>chevron-thin-left-copy.png" alt=""><p>Kembali</p></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php if ( count($dataBlogs->getData()) > 0 ): ?>
<section class="home-sec-1">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <h4>BERITA LAINNYA</h4>
            </div>

        </div>
        <div class="row">
            <?php foreach ($dataBlogs->getData() as $key => $value): ?>
            <div class="col-md-20">
                <div class="box-content">
                    <div class="image">
                        <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id, 'type'=> $type)); ?>"><img class="img img-fluid w-100" src="<?php echo $this->assetBaseurl; ?>../../images/blog/<?php echo $data->image ?>" alt="" ></a>
                    </div>
                    <div class="title">
                        <p>
                            <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id, 'type'=> $type)); ?>"><?php echo $value->description->title ?></a>
                        </p>
                    </div>
                    <div class="subtitle">
                        <p><?php echo substr(strip_tags($value->description->content), 0, 60); ?></p>
                    </div>
                </div>
            </div>
            <?php endforeach ?>
        </div>
        <div class="row">
            <div class="col-md-60">
                <button class="lihatsemua"><a href="#"><p>Lihat Semua Berita</p></a></button>
            </div>
        </div>
    </div>
</section>
<?php endif ?>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>


<?php
/*
<section class="cover-blog">
  <div class="prelative container py-5">
    <div class="container2 mx-auto py-5">
      <div class="row py-5">
        <div class="col-md-60 text-center pt-3">
          <button class="profil mx-auto">Blog</button>
        </div>
        <div class="col-md-60 text-center pt-4">
          <h2 class="mx-auto">Aneka Artikel Dan Tips Seputar Dunia Bahan Bangunan Oleh Arsimetris Djaja Banjarmasin.</h2>  
        </div>
      </div>
    </div>
  </div>
</section>

<section class="blog-detail">
  <div class="prelative container">
    <div class="row">
      <div class="col-md-15">
        <div class="title-blog">
          <div class="title">
            <p>Kategori blog arsimetris djaja</p>
            <hr>
            <ul>
              <li><a href="<?php echo CHtml::normalizeUrl(array('/blog/index')); ?>">
                Semua
              </a> 
            </li>
            <?php 
            $res_product = array(
              1=>'Tips & Trik',
              2=>'Artikel',
              3=>'Berita',
              );
            ?>
            <?php foreach ($res_product as $key => $value): ?>
            <li>
                <a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'topik'=>$key)); ?>"><?php echo $value ?></a> 
            </li>
            <?php endforeach ?>
            </ul>
          </div>
        </div>
        <div class="py-4"></div>
      </div>  
      <div class="col-md-45">
        <div class="kategori-date">
          <div class="kategori-kanan">
            <p>- <?php echo $res_product[$dataBlog->topik_id] ?> | <span><?php echo date("d F Y", strtotime($dataBlog->date_input)); ?></span></p>
          </div>
        </div>
        <div class="title">
          <h1><?php echo $dataBlog->description->title ?></h1>
        </div>
        <div class="image pt-4">
          <img class="w-100 img img-fluid" src="<?php echo Yii::app()->baseUrl.'/images/blog/'. $dataBlog->image ?>" alt="">
        </div>
        <div class="content-blog py-4 pb-5">
         <?php echo $dataBlog->description->content ?>
        </div>

        <div class="lainnya">
          <div class="kategori-bottom">
            <p>artikel blog arsimetris djaja lainnya</p>
          </div>
          <hr>
          <div class="blog-box-container pb-5">
            <div class="row">

            <?php foreach ($dataBlogs->getData() as $key => $value): ?>
            <div class="col-md-20">
              <div class="blog-box-container pb-5">
                <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id)); ?>">
                  <img class="img w-100" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(342,235, '/images/blog/'. $value->image, array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="">
                </a>
                <div class="kategori-blog pt-4">
                  <p>- <?php echo $res_product[$value->topik_id] ?></p>
                </div>
                <div class="title-blog">
                  <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id)); ?>">
                  <h1><?php echo $value->description->title ?></h1>
                  </a>
                </div>
                <div class="baca-selanjutnya pt-2">
                  <p><a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id)); ?>">BACA ARTIKEL</a></p>
                </div>
              </div>
            </div>
          <?php endforeach ?>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
*/ ?>