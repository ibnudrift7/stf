<?php echo $this->renderPartial('//home/_top_akademik_mnu', array('actives' => 'program-pasca-sarjana')); ?>

<section class="program-pasca-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-judul">
                    <?php if (Yii::app()->language == 'en'): ?>
                    <h4>GRADUATE PROGRAM</h4>
                    <p>Please see the academic study programs of the Postgraduate Program at the Driyarkara School of Philosophy:</p>
                    <?php else: ?>
                    <h4>PROGRAM PASCA SARJANA</h4>
                    <p>Silahkan melihat program studi akademik Program Pasca Sarjana di Sekolah Tinggi Filsafat Driyarkara:</p>
                    <?php endif ?>
                    
                </div>
                <?php 
                // $criteria = new CDbCriteria;
                // $criteria->addCondition('type = "pasca_sarjana"');
                // $criteria->order = 't.id DESC';
                // $data = TbProgramSarjana::model()->findAll($criteria);
                $criteria = new CDbCriteria;
                $criteria->with = array('description');

                $criteria->addCondition('description.language_id = :language_id');
                $criteria->params[':language_id'] = $this->languageID;

                $criteria->addCondition('t.parent_id = :id_par');
                $criteria->params[':id_par'] = 2;

                // $criteria->addCondition('t.type = :type');
                // $criteria->params[':type'] = 'category';
                // $criteria->order = 'sort ASC';

                $data_sub = PrdCategory::model()->findAll($criteria);

                ?>
                <?php foreach ($data_sub as $key => $value): ?>
                <div class="box-content">
                    <div class="garis"></div>
                    <h5><?php echo $value->description->name ?></h5>
                    <div class="py-2"></div>
                    <button class="baca"><a href="<?php echo CHtml::normalizeUrl(array('/home/akademikprogramdetil', 's_category'=>$value->id, 's_type'=> 1 )); ?>"><?php echo Tt::t('front', 'Baca Lebih Lanjut') ?></a></button>
                    <button class="daftar"><a target="_blank" href="<?php echo CHtml::normalizeUrl(array('/home/penerimaansarjana', 'type'=> 'program-pasca-sarjana')); ?>"><?php echo Tt::t('front', 'Mendaftar') ?></a></button>
                    <div class="py-2"></div>
                </div>
                <?php endforeach ?>

                <div class="clearfix"></div>
                <div class="py-2"></div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>