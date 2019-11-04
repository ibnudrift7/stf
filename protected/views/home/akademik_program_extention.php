<?php echo $this->renderPartial('//home/_top_akademik_mnu', array('actives' => 'extension-course')); ?>

<section class="program-extention-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-judul">
                    <?php if (Yii::app()->language == 'en'): ?>
                    <h4>EXTENSION COURSE</h4>
                    <p>Please see the academic study program Postgraduate Program at the Driyarkara School of Philosophy:</p>
                    <?php else: ?>
                    <h4>EXTENSION COURSE</h4>
                    <p>Silahkan melihat program studi akademik Program Pasca Sarjana di Sekolah Tinggi Filsafat Driyarkara:</p>
                    <?php endif ?>
                </div>
                <?php 
                $criteria = new CDbCriteria;
                $criteria->order = 't.id DESC';
                $data = Extensioncourse::model()->findAll($criteria);
                ?>
                <?php foreach ($data as $key => $value): ?>
                <div class="box-content">
                    <div class="garis"></div>
                    <?php if (Yii::app()->language == 'en'): ?>
                        <h5><?php echo $value->title_en ?></h5>
                        <p><?php echo $value->content_en ?></p>
                    <?php else: ?>
                        <h5><?php echo $value->title_id ?></h5>
                        <p><?php echo $value->content_id ?></p>
                    <?php endif ?>
                    <button class="baca"><a target="_blank" href="<?php echo Yii::app()->baseUrl.'/images/extensi/'. $value->image ?>"><?php echo Tt::t('front', 'Lihat Pdf') ?></a></button>
                    <button class="daftar"><a href="<?php echo CHtml::normalizeUrl(array('/home/programextensionform')); ?>"><?php echo Tt::t('front', 'Mendaftar') ?></a></button>
                </div>
                <?php endforeach ?>

                <div class="clear"></div>
                <div class="py-2"></div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>