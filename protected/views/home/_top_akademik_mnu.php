<section class="top-covers py-5 back-abouts">
    <div class="pos-tops_submenu">
        <div class="prelatife container">
            <ul class="list-inline">
                <li class="list-inline-item <?php if ($actives == 'siadri'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/akademiksiadri')); ?>">SIADRI</a></li>
                <li class="list-inline-item <?php if ($actives == 'program-sarjana' or $_GET['type'] == 'program-sarjana'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/akademikprogramsarjana', 's_type'=>1, 's_category'=> 1, 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'program sarjana') ?></a></li>
                <li class="list-inline-item <?php if ($actives == 'program-pasca-sarjana' or $_GET['type'] == 'program-pasca-sarjana'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/akademikprogrampasca', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'program pasca sarjana') ?></a></li>
                <li class="list-inline-item <?php if ($actives == 'extension-course' or $_GET['type'] == 'extension-course'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/akademikprogramextension', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'extension course') ?></a></li>
                <li class="list-inline-item <?php if ($actives == 'kalendar-akademik' or $_GET['type'] == 'kalendar-akademik'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/akademikcalendar', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'kalendar akademik') ?></a></li>
            </ul>
            <div class="clear clearfix"></div>
        </div>
    </div>
    <div class="prelatife container py-5 my-5">
        <div class="inner-texts text-center d-block py-4">
            <h1><?php echo Tt::t('front', 'Akademik') ?></h1>
            <?php if (isset($_GET['name']) && $_GET['name'] != ''): ?>
            <h4><?php echo strtoupper(str_replace('-', ' ', $_GET['name'])) ?></h4>
            <?php else: ?>
            <?php if ($actives != 'akademik_detail'): ?>
            <h4><?php echo strtoupper(str_replace('-', ' ', $actives)) ?></h4>
            <?php endif ?>
            <?php endif ?>
            <div class="lines-middle d-block mx-auto"></div>
        </div>
        <div class="clear"></div>
    </div>
</section>