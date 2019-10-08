<?php echo $this->renderPartial('//home/_top_about_mnu', array('actives' => 'hubungi-kami')); ?>

<section class="info-sec-1">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <div class="box-content ins_contentContact text-center">
                    
                    <div class="py-1"></div>

                    <p>You can contact us anytime with our online form, <br>
                    we will get back tou you as soon as possible.</p>
                    <?php echo $this->renderPartial('//home/_form_contact2', array('model'=> $model)); ?>                    

                    <div class="clear clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>