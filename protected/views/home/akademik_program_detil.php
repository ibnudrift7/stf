<?php echo $this->renderPartial('//home/_top_akademik_mnu', array('actives' => 'akademik_detail')); ?>

<?php 
$ids = (int) $_GET['id'];
$data = TbProgramSarjana::model()->findByPk($ids);

$titles = '';
$subtitle = '';
$content = '';
if (Yii::app()->language == 'en') {
    $titles = $data->title_en;
    $subtitle = $data->subtitle_en;
    $content = $data->content_en;    
}else{
    $titles = $data->title;
    $subtitle = $data->subtitle_id;
    $content = $data->content_id;
}
?>

<section class="program-detil-sec-1">
    <div class="prelative container">
        <div class="row kecil no-gutters">
            <div class="col-md-40">
                <h3><?php echo strtoupper(strtolower( $titles )) ?></h3>
            </div>
            <div class="col-md-20">
                <div class="box-content-topleft">
                    <a href="#" onclick="window.history.back();">
                        <div class="image">
                            <img class="img img-fluid" src="<?php echo $this->assetBaseurl; ?>chevron-thin-left-copy.png" alt="">
                        </div>
                        <p>INDEX PROGRAM SARJANA</p>
                    </a>
                </div>
            </div>
        </div>
        <div class="row kecil no-gutters">
            <div class="col-md-60">
                <div class="box-content">
                    <?php echo $content ?>
                </div>
                <!-- <div class="box-content">
                    <h5>Hasil Belajar</h5>
                    <ul>
                        <li> Conduct original, publishable research in a field of Biology.</li>
                        <li>Formulate a novel research question and design the experiments required to make advances in the field.</li>
                        <li>Demonstrate a broad knowledge of theory and research in several areas of Biology and an in-depth knowledge of a specific area of expertise.</li>
                        <li>Display an understanding of the ethical guidelines for biological research and be able to follow such guidelines.</li>
                        <li>Communicate the findings of their research both orally and in writing to professional and lay audiences.</li>
                    </ul>
                </div>
                <div class="box-content">
                    <h5>Dosen / Pengajar Fakultas</h5>
                    <p>Jeannie Simms, Director, Master of Fine Arts Program<br>Lisa Bynoe, Associate Dean of Graduate Programs</p>
                </div> -->

                <div class="button">
                    <button class="pendaftaran">
                        <p><?php echo Tt::t('front', 'Pendaftaraan') ?> <?php echo MasterJenjangstudi::model()->findByPk($data->jenjang_id)->nama ?></p>
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>