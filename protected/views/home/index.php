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
                    // array(
                    //     'pict'=>'home2.jpg',
                    //     'title'=>'Weeks of welcome',
                    //     'desc'=>'New enhancements to BC`s annual rite of introduction for first-year students.',
                    // ),
                    // array(
                    //     'pict'=>'home3.jpg',
                    //     'title'=>'Learning from others: giving back',
                    //     'desc'=>'BC graduate Joseph Rizzuto ’15, now in medical school, is creating his own service-learning tradition in Nepal.',
                    // ),
                );

        $criteria = new CDbCriteria;
        $criteria->with = array('description');
        $criteria->addCondition('active = "1"');
        $criteria->addCondition('description.language_id = :language_id');
        $criteria->params[':language_id'] = $this->languageID;
        $criteria->order = 'date_input DESC';
        
        // if ( isset($_GET['topik']) AND $_GET['topik'] != '' ) {
        $criteria->addCondition('t.topik_id = :sn_topikid');
        $criteria->params[':sn_topikid'] = intval(1);
        // }
        $criteria->limit = 3;
        $data = Blog::model()->findAll($criteria);
        ?>
        <div class="row">

            <?php foreach ($data as $key => $value): ?>
            <div class="col-md-20">
                <div class="box-content">
                    <div class="image">
                        <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=>$value->id, 'type'=> 'berita', 'lang'=>Yii::app()->language)); ?>"><img class="img img-fluid w-100" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(382,255, '/images/blog/'. $value->image , array('method' => 'adaptiveResize', 'quality' => '90')); ?>" alt="" ></a>
                    </div>
                    <div class="title">
                        <p>
                            <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=>$value->id, 'type'=> 'berita', 'lang'=>Yii::app()->language)); ?>"><?php echo $value->description->title ?></a>
                        </p>
                    </div>
                    <div class="subtitle">
                        <p><?php echo $value->description->quote ?></p>
                    </div>
                </div>
            </div>
            <?php endforeach ?>


        </div>
        <div class="row">
            <div class="col-md-60">
                <button class="lihatsemua"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index')); ?>"><p>Lihat Semua Berita</p></a></button>
            </div>
        </div>
        <div class="py-5"></div>
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
        <?php 
        $criteria = new CDbCriteria;
        $criteria->with = array('description');
        $criteria->addCondition('status = "1"');
        $criteria->addCondition('description.language_id = :language_id');
        $criteria->params[':language_id'] = $this->languageID;
        $criteria->order = 't.id DESC';
        $criteria->limit = 4;
        $data = PgTestimonial::model()->findAll($criteria);
        ?>
        <div class="row justify-content-center">
            <?php foreach ($data as $key => $value): ?>
            <div class="col-md-15 col-30">
                <div class="box-content">
                    <div class="desk">
                        <p><?php echo $value->description->content ?></p>
                    </div>
                    <div class="gambar">
                        <img  class="img img-fluid" src="<?php echo Yii::app()->baseUrl.'/images/testimoni/'. $value->image ?>" alt="">
                    </div>
                    <div class="nama">
                        <p><?php echo $value->name ?></p>
                    </div>
                    <div class="jabatan">
                        <p><?php echo $value->email ?></p>
                    </div>
                </div>
            </div>
            <?php endforeach ?>

        </div>
    </div>
</section>

<section class="home-sec-3">
    <div class="prelative container">
        <?php 
        $criteria = new CDbCriteria;
        $criteria->with = array('description');
        $criteria->addCondition('status = "1"');
        $criteria->addCondition('description.language_id = :language_id');
        $criteria->params[':language_id'] = $this->languageID;
        $criteria->order = 't.id DESC';
        $criteria->limit = 3;
        $data_info = Infokampus::model()->findAll($criteria);
        ?>
        <div class="row">
            <div class="col-md-30">
                <div class="box-content-left">
                    <h3>Aktifitas di STF Driyarkara</h3>
                    <h5>Info Kampus</h5>
                    <?php foreach ($data_info as $key => $value): ?>
                    <div class="box-caption">
                        <h6><?php echo $value->description->title ?></h6>
                        <p><?php echo $value->description->content; ?></p>
                    </div>
                    <?php endforeach ?>

                    <button class="button-info">
                        <a href="<?php echo CHtml::normalizeUrl(array('/home/tentanginfo')); ?>"><p>Lihat Semua Info Kampus</p></a>
                    </button>
                </div>
            </div>

            <div class="col-md-30">
                <div class="box-content-right">
                    <h4>Kegiatan Sekolah</h4>
                    <?php 
                    $criteria = new CDbCriteria;
                    // $criteria->order = 't.id DESC';
                    $alls_data = KegiatanUniv::model()->findAll($criteria);
                    ?>
                    <?php foreach ($alls_data as $key => $value): ?>
                    <div class="row no-gutters">
                        <div class="col-md-6 col-6">
                            <div class="images prelatife">
                                <img src="<?php echo $this->assetBaseurl; ?>square-tgl.jpg" alt="">
                                <span><?php echo date('M', strtotime($value->date_event)); ?><br><small><?php echo date('d', strtotime($value->date_event)); ?></small></span>
                            </div>
                        </div>
                        <div class="col-md-54 col-54">
                            <div class="kalender">
                                <?php if (Yii::app()->language == 'en'): ?>
                                <h5><?php echo $value->title_en ?></h5>    
                                <?php else: ?>
                                <h5><?php echo $value->title_id ?></h5>
                                <?php endif ?>
                                <p><?php echo date('g:i a', strtotime($value->time_start)); ?> - <?php echo strtolower($value->time_end); ?></p>
                            </div>
                        </div>
                    </div>
                    <div class="garis"></div>
                    <?php endforeach ?>

                </div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>