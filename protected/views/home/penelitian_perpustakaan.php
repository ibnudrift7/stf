<?php 
$type = 'perpustakaan';
$names = 'perpustakaan';
if (isset($_GET['type'])) {
    $type = htmlspecialchars($_GET['type']);
    $names = str_replace('-', ' ', $type);
}
$this->pageTitle = ucwords($names).' '.$this->pageTitle;
?>
<?php echo $this->renderPartial('//home/_top_penelitian_mnu', array('actives' => $type)); ?>

<section class="penelitian-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-content">
                    <h3><?php echo strtoupper( Tt::t('front', $names) ); ?></h3>
                    <?php 
                    $link = '#';
                    if ($type == 'perpustakaan') {
                        $link = $this->setting['link_eks_perpustakaan'];
                    } else if($type == 'jurnal-diskursus') {
                        $link = $this->setting['link_eks_jurnaldis'];
                    } else if($type == 'publikasi') {
                        $link = $this->setting['link_eks_publikasi'];
                    } else if($type == 'repositori') {
                        $link = $this->setting['link_eks_repositori'];
                    }
                    ?>
                    <?php if (Yii::app()->language == 'en'): ?>
                    <p>Please <a target="_blank" href="<?php echo $link ?>">click here</a> to enter the Driyarkara Philosophy High School Library</p>    
                    <?php else: ?>
                    <p>Silahkan <a target="_blank" href="<?php echo $link ?>">klik di sini</a>  untuk masuk ke Perpustakaan Sekolah Tinggi Filsafat Driyarkara</p>
                    <?php endif ?>
                </div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>