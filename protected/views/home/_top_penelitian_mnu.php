<section class="top-covers py-5 back-abouts">
    <div class="pos-tops_submenu">
        <div class="prelatife container">
            <ul class="list-inline">
                <li class="list-inline-item <?php if ($actives == 'perpustakaan'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/penelitian', 'type'=>'perpustakaan', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'perpustakaan') ?></a></li>
                <li class="list-inline-item <?php if ($actives == 'jurnal-diskursus'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/penelitian', 'type'=>'jurnal-diskursus', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'jurnal-diskursus') ?></a></li>
                <li class="list-inline-item <?php if ($actives == 'publikasi'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/penelitian', 'type'=>'publikasi', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'publikasi') ?></a></li>
                <li class="list-inline-item <?php if ($actives == 'repositori'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/penelitian', 'type'=>'repositori', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'repositori') ?></a></li>
            </ul>
            <div class="clear clearfix"></div>
        </div>
    </div>
    <div class="prelatife container py-5 my-5">
        <div class="inner-texts text-center d-block py-4">
            <?php if (Yii::app()->language == 'en'): ?>
            <h1>Research</h1>    
            <?php else: ?>
            <h1>Penelitian</h1>
            <?php endif ?>
            <?php 
            $namas = (str_replace('-', ' ', $actives));
            ?>
            <h4><?php echo ucwords(Tt::t('front', $namas)) ?></h4>
            <div class="lines-middle d-block mx-auto"></div>
        </div>
        <div class="clear"></div>
    </div>
</section>