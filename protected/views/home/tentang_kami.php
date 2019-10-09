<?php echo $this->renderPartial('//home/_top_about_mnu', array('actives' => 'Sejarah')); ?>

<section class="tentang-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-text">
                    
                    <?php echo $this->setting['sejarah_content'] ?>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-60">
                <div class="gambar">
                    <img class="img img-fluid w-100" src="<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['sejarah_banner_middle'] ?>" alt="">
                </div>
            </div>
        </div>

        <div class="row kecil">
            <div class="col-md-30">
                <div class="gambar-kecil">
                    <img class="img img-fluid" src="<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['sejarah_biografi_pict'] ?>" alt="">
                </div>
            </div>
            <div class="col-md-30">
                <div class="box-caption">
                    <h4>BIOGRAFI <br> <?php echo $this->setting['sejarah_biografi_titles'] ?></h4>
                    <p><?php echo $this->setting['sejarah_biografi_content'] ?></p>
                </div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>