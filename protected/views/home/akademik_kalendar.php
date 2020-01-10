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

                    <?php if ($this->setting['file_upload_pdf'] != ''): ?>
                    <div class="nxs_academic">                    
                    <a download href="<?php echo Yii::app()->baseUrl; ?>/images/static/<?php echo $this->setting['file_upload_pdf']; ?>"><i class="fa fa-file"></i> Download Pdf Akademik</a>
                    </div>
                    <?php endif ?>

                    <div class="clearfix"></div>
                </div>

            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>

<style type="text/css">
    .nxs_academic{}
    .nxs_academic a{
        font-size: 17px;
        font-weight: 400;
        color: #000;
        text-decoration: none;
    }
    .nxs_academic a:hover,
    .nxs_academic a:focus{
        text-decoration: none;
        color: #000;
    }
    .nxs_academic a i.fa{
        color: #cc1212;
        font-size: 19px;
    }
</style>