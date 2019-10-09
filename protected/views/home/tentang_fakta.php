<?php echo $this->renderPartial('//home/_top_about_mnu', array('actives' => 'Fakta-&-Angka')); ?>

<section class="tentang-fakta-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-content content-text">
                    
                    <?php echo $this->setting['fakta_content'] ?>
                </div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>