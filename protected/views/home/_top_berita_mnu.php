<section class="top-covers py-5 back-abouts">
    <div class="pos-tops_submenu">
        <div class="prelatife container">
            <ul class="list-inline">
                <li class="list-inline-item <?php if ($actives == 'mahasiswa'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'type'=>'mahasiswa', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'mahasiswa') ?></a></li>
                <li class="list-inline-item <?php if ($actives == 'alumni'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'type'=>'alumni', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'alumni') ?></a></li>
                <li class="list-inline-item <?php if ($actives == 'berita'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'type'=>'berita', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'berita') ?></a></li>
            </ul>
            <div class="clear clearfix"></div>
        </div>
    </div>
    <div class="prelatife container py-5 my-5">
        <div class="inner-texts text-center d-block py-4">
            <h1><?php echo ucwords( Tt::t('front', 'komunitas') ) ?></h1>
            <h4><?php 
            $namas = (str_replace('-', ' ', $actives)); 
            echo strtoupper( Tt::t('front', $namas) );
            ?></h4>
            <div class="lines-middle d-block mx-auto"></div>
        </div>
        <div class="clear"></div>
    </div>
</section>