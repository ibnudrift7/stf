<?php echo $this->renderPartial('//home/_top_about_mnu', array('actives' => 'Visi-&-Misi')); ?>

<section class="visi-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-30">
                <div class="box-content">
                    <h4>VISI</h4>
                    <?php echo $this->setting['visi_content'] ?>
                </div>
            </div>
            <div class="col-md-30">
                <div class="box-content">
                    <h4>MISI</h4>
                   <?php echo $this->setting['misi_content'] ?>
                </div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>