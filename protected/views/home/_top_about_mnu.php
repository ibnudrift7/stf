<section class="top-covers py-5 back-abouts" style="background-image: url('<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['sejarah_hero_image']; ?>');" >
    <div class="pos-tops_submenu">
        <div class="prelatife container">
            <ul class="list-inline">
                <li class="list-inline-item <?php if ($actives == 'Sejarah'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/tentangkami', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Sejarah') ?></a></li>
                <li class="list-inline-item <?php if ($actives == 'Visi-&-Misi'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/visimisi', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Visi & Misi') ?></a></li>
                <li class="list-inline-item <?php if ($actives == 'Administrasi'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/tentangadministrasi', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Administrasi') ?></a></li>
                <li class="list-inline-item <?php if ($actives == 'Fakta-&-Angka'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/tentangfakta', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Fakta & Angka') ?></a></li>
                <li class="list-inline-item <?php if ($actives == 'Info Kampus'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/tentanginfo', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Info Kampus') ?></a></li>
            </ul>
            <div class="clear clearfix"></div>
        </div>
    </div>
    <div class="prelatife container py-5 my-5">
        <div class="inner-texts text-center d-block py-4">
            <?php if ($actives != 'hubungi-kami'): ?>
                <?php if (Yii::app()->language == 'en'): ?>
                <h1>About Us</h1>    
                <?php else: ?>
                <h1>Tentang Kami</h1>
                <?php endif ?>
            <?php endif ?>
            <?php 
            $nams = (str_replace('-', ' ', $actives)); 
            ?>
            <h4><?php echo strtoupper(Tt::t('front', $nams)); ?></h4>
            <div class="lines-middle d-block mx-auto"></div>
        </div>
        <div class="clear"></div>
    </div>
</section>