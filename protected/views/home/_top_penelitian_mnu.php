<section class="top-covers py-5 back-abouts">
    <div class="pos-tops_submenu">
        <div class="prelatife container">
            <ul class="list-inline">
                <li class="list-inline-item <?php if ($actives == 'perpustakaan'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/penelitian', 'type'=>'perpustakaan')); ?>">Perpustakaan</a></li>
                <li class="list-inline-item <?php if ($actives == 'jurnal-diskursus'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/penelitian', 'type'=>'jurnal-diskursus')); ?>">jurnal diskursus</a></li>
                <li class="list-inline-item <?php if ($actives == 'publikasi'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/penelitian', 'type'=>'publikasi')); ?>">publikasi</a></li>
                <li class="list-inline-item <?php if ($actives == 'repositori'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/penelitian', 'type'=>'repositori')); ?>">repositori</a></li>
            </ul>
            <div class="clear clearfix"></div>
        </div>
    </div>
    <div class="prelatife container py-5 my-5">
        <div class="inner-texts text-center d-block py-4">
            <h1>Tentang Kami</h1>
            <h4><?php echo strtoupper(str_replace('-', ' ', $actives)) ?></h4>
            <div class="lines-middle d-block mx-auto"></div>
        </div>
        <div class="clear"></div>
    </div>
</section>