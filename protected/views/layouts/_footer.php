<section class="footer">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-30">
                <div class="whattaps">
                    <?php 
                    $n_wa = str_replace('08', '628',  str_replace(' ', '', $this->setting['contact_wa']));
                    ?>
                    <a href="https://wa.me/<?php echo $n_wa ?>"><p><b>Whatsapp Hotline. <?php echo $this->setting['contact_wa'] ?></b> (click to chat)</a></p>
                </div>
                <div class="box-contact">
                    <div class="telmi">
                        <p>Tel. <?php echo $this->setting['contact_phone'] ?></p>
                        <p>Email. <?php echo $this->setting['email'] ?></p>
                    </div>
                    <div class="alamat">
                        <p><?php echo nl2br($this->setting['contact_adress']) ?></p>
                    </div>
                </div>
                <div class="copyright">
                    <p>Copyright &copy; 2019 Sekolah Tinggi Filsafat Driyarkara.</p>
                    <p>Website design by <a target="_blank" title="Website Design Surabaya" href="https://markdesign.net">Mark Design</a>.</p>
                </div>
            </div>
            <div class="col-md-30">
                <div class="box-content-top">
                    <ul class="list-inline">
                        <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/penerimaansarjana', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'PENERIMAAN') ?></a></li>
                        <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/contact', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'HUBUNGI KAMI') ?></a></li>
                    </ul>
                </div>
                <div class="py-5"></div>
                <div class="py-2"></div>
                <div class="socmed_scl text-right">
                    <ul class="list-inline">
                        <li class="list-inline-item"><a href="<?php echo $this->setting['url_facebook'] ?>"><i class="fa fa-facebook"></i></a>&nbsp;&nbsp;</li>
                        <li class="list-inline-item"><a href="<?php echo $this->setting['url_linkedin'] ?>"><i class="fa fa-linkedin"></i></a>&nbsp;&nbsp;</li>
                        <li class="list-inline-item"><a href="<?php echo $this->setting['url_youtube'] ?>"><i class="fa fa-youtube-play"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
