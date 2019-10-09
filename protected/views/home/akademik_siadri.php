<?php echo $this->renderPartial('//home/_top_akademik_mnu', array('actives' => 'siadri')); ?>

<section class="siadri-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-content">
                    <h4>SIADRI</h4>
                    <p>Silahkan <a target="_blank" href="<?php echo $this->setting['link_eks_siadri'] ?>"><?php echo Tt::t('front', 'klik di sini') ?></a>  <?php echo Tt::t('front', 'untuk masuk ke Sistem Informasi Akademik') ?></p>
                </div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>