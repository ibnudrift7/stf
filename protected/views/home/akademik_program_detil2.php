<?php echo $this->renderPartial('//home/_top_akademik_mnu', array('actives' => 'program-pasca-sarjana')); ?>

<section class="program-sarjana-sec-1">
    <div class="prelative container">

        <div class="pos_abs_full v-top">
            <div class="row">
                <div class="col-md-20">
                    <div class="sub-menu_pull">
                        <?php 
                        $datas_lfs = FixMenuAkademik::model()->findAll();
                        ?>
                        <ul class="list-unstyled">
                            <?php foreach ($datas_lfs as $key => $value): ?>
                            <?php 
                            $names = '';
                            if (Yii::app()->language == 'en') {
                                $names = $value->code;
                            }else{
                                $names = $value->nama;
                            }
                            ?>
                            <li <?php if (isset($_GET['s_type']) && $_GET['s_type'] == $value->id): ?>class="active"<?php endif ?>><a href="<?php echo CHtml::normalizeUrl(array('home/akademikprogramdetil', 's_type'=>$value->id, 's_category'=> $_GET['s_category'], 'lang'=>Yii::app()->language)); ?>"><?php echo $names ?></a></li>
                            <?php endforeach ?>
                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <?php 
        $criteria = new CDbCriteria;
        // $criteria->with = array('description');
        // $criteria->addCondition('active = "1"');
        // $criteria->order = 'date_input DESC';

        $criteria->addCondition('t.type_kategori = :type_k');
        $criteria->params[':type_k'] = intval($_GET['s_type']);
        $criteria->addCondition('t.category_id = :category_id');
        $criteria->params[':category_id'] = intval($_GET['s_category']);
        $data_content = PageSarjana::model()->find($criteria);
        ?>
        <div class="row kecil outers_inner_content_detail_sarjana">
            <div class="col-md-60">
                <div class="box-judul">
                    <?php 
                    $dns_category = PrdCategoryDescription::model()->find('category_id = :categ_id', array(':categ_id'=>$_GET['s_category']));
                    ?>
                    <?php if (Yii::app()->language == 'en'): ?>
                    <h4><?php echo $dns_category->name ?></h4>
                    <p class="subtitle"><b><?php echo ucwords($data_content->title_en) ?></b></p>    
                    <?php else: ?>
                    <h4><?php echo $dns_category->name ?></h4>
                    <p class="subtitle"><b><?php echo ucwords($data_content->title) ?></b></p>
                    <?php endif ?>
                </div>
                <div class="py-2"></div>
                <div class="box-details">
                    
                    <?php echo $data_content->content ?>

                    <div class="clear"></div>
                </div>
                <?php /*
                <?php 
                $criteria = new CDbCriteria;
                $criteria->addCondition('type = "sarjana"');
                $criteria->order = 't.id DESC';
                $data = TbProgramSarjana::model()->findAll($criteria);
                ?>
                <?php foreach ($data as $key => $value): ?>
                <div class="box-content">
                    <div class="garis"></div>
                    <?php if (Yii::app()->language == 'en'): ?>
                    <h5><?php echo $value->title_en ?></h5>
                    <p><?php echo $value->subtitle_en ?></p>    
                    <?php else: ?>
                    <h5><?php echo $value->title_id ?></h5>
                    <p><?php echo $value->subtitle_id ?></p>    
                    <?php endif ?>
                    <button class="baca"><a href="<?php echo CHtml::normalizeUrl(array('/home/akademikprogramdetil', 'id'=>$value->id, 'type'=>'program-sarjana')); ?>"><?php echo Tt::t('front', 'Baca Lebih Lanjut') ?></a></button>
                    <button class="daftar"><a target="_blank" href="<?php echo $value->link ?>"><?php echo Tt::t('front', 'Mendaftar') ?></a></button>
                </div>
                <?php endforeach;

                */ ?>
                <div class="py-5"></div>

                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>