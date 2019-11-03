<?php echo $this->renderPartial('//home/_top_akademik_mnu', array('actives' => 'extension-course')); ?>

<section class="info-sec-1">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <div class="box-content ins_contentContact text-center">
                    
                    <h4>EXTENSION COURSE FORM</h4>
                    <div class="py-2"></div>
                    <p>Silakan mengisi formulir online di bawah ini. 
                    <br>Kami akan menghubungi Anda sesegera mungkin.</p>

                    <div class="py-1"></div>

                    <?php echo $this->renderPartial('//home/_form_contact3', array('model'=> $model)); ?>                    

                    <div class="clear clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>