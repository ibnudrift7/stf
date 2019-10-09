<?php echo $this->renderPartial('//home/_top_akademik_mnu', array('actives' => 'program-sarjana')); ?>

<section class="program-sarjana-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-judul">
                    <?php if (Yii::app()->language == 'en'): ?>
                    <h4>DEGREE PROGRAM</h4>
                    <p>Please see the academic study programs of the Postgraduate Program at the Driyarkara School of Philosophy:</p>    
                    <?php else: ?>
                    <h4>PROGRAM SARJANA</h4>
                    <p>Silahkan melihat program studi akademik Program Pasca Sarjana di Sekolah Tinggi Filsafat Driyarkara:</p>
                    <?php endif ?>
                </div>
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
                <?php endforeach ?>

                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>