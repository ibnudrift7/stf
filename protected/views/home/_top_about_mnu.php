<section class="top-covers py-5 back-abouts">
    <div class="pos-tops_submenu">
        <div class="prelatife container">
            <ul class="list-inline">
                <li class="list-inline-item <?php if ($actives == 'sejarah'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/tentangkami')); ?>">Sejarah</a></li>
                <li class="list-inline-item <?php if ($actives == 'visi-&-misi'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/visimisi')); ?>">Visi & Misi</a></li>
                <li class="list-inline-item <?php if ($actives == 'administrasi'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/tentangadministrasi')); ?>">Administrasi</a></li>
                <li class="list-inline-item <?php if ($actives == 'fakta-&-angka'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/tentangfakta')); ?>">Fakta & Angka</a></li>
                <li class="list-inline-item <?php if ($actives == 'info-kampus'): ?>active<?php endif; ?>"><a href="<?php echo CHtml::normalizeUrl(array('home/tentanginfo')); ?>">Info Kampus</a></li>
            </ul>
            <div class="clear clearfix"></div>
        </div>
    </div>
    <div class="prelatife container py-5 my-5">
        <div class="inner-texts text-center d-block py-4">
            <?php if ($actives != 'hubungi-kami'): ?>
            <h1>Tentang Kami</h1>
            <?php endif ?>
            <h4><?php echo strtoupper(str_replace('-', ' ', $actives)) ?></h4>
            <div class="lines-middle d-block mx-auto"></div>
        </div>
        <div class="clear"></div>
    </div>
</section>