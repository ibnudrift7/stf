<?php echo $this->renderPartial('//home/_top_akademik_mnu', array('actives' => 'kalendar-akademik')); ?>

<section class="program-extention-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-judul">
                    <h4><?php echo Tt::t('front', 'KALENDAR AKADEMIK') ?></h4>
                    <!-- <p>Silahkan melihat program studi akademik Program Pasca Sarjana di Sekolah Tinggi Filsafat Driyarkara:</p> -->
                </div>
                <div class="box-content n_back_banner">
                    <?php echo $this->setting['kalendar_content'] ?>
                    <div class="clearfix"></div>
                </div>

            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>