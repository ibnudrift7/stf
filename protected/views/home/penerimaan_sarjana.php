<?php 
$type = 'program-sarjana';
if ( isset($_GET['type']) ) {
    $type = $_GET['type'];
}
?>
<?php echo $this->renderPartial('//home/_top_penerimaan_mnu', array('actives' => $type)); ?>

<section class="penerimaan-sec-1">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-60">
                <div class="box-content">
                    <?php if ($_GET['type'] == 'program-pasca-sarjana'): ?>
                    <h3><?php echo $this->setting['sarjana_title11'] ?></h3>
                    <?php echo $this->setting['sarjana_content'] ?>
                    <?php else: ?>
                    <h3><?php echo $this->setting['pascasarjana_title11'] ?></h3>
                    <?php echo $this->setting['pascasarjana_content'] ?>
                    <?php endif ?>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="penerimaan-sec-2">
    <div class="prelative container">
        <div class="row kecil">
            <div class="col-md-20">
                <div class="box-isi">
                    <h5>Tanggal Pendaftaran</h5>
                     <?php if ($_GET['type'] == 'program-pasca-sarjana'): ?>
                    <?php // echo $this->setting['sarjana_content'] ?>
                    <p><?php echo $this->setting['sarjana1_tanggal_masuk'] ?></p>
                    <?php else: ?>
                    <p><?php echo $this->setting['sarjana2_tanggal_masuk'] ?></p>
                    <?php endif ?>
                </div>
            </div>
            <div class="col-md-20">
                <div class="box-isi">
                    <h5>Test Masuk</h5>
                    <?php if ($_GET['type'] == 'program-pasca-sarjana'): ?>
                    <?php // echo $this->setting['sarjana_content'] ?>
                    <p><?php echo $this->setting['sarjana1_test_masuk'] ?></p>
                    <?php else: ?>
                    <p><?php echo $this->setting['sarjana2_test_masuk'] ?></p>
                    <?php endif ?>
                </div>
            </div>
            <div class="col-md-20">
                <div class="box-isi">
                    <h5>Daftar Ulang</h5>
                    <?php if ($_GET['type'] == 'program-pasca-sarjana'): ?>
                    <?php // echo $this->setting['sarjana_content'] ?>
                    <p><?php echo $this->setting['sarjana1_daftar_ulang'] ?></p>
                    <?php else: ?>
                    <p><?php echo $this->setting['sarjana2_daftar_ulang'] ?></p>
                    <?php endif ?>
                </div>
            </div>
        </div>
        <div class="row kecil">
            <div class="col-md-20">
                <div class="box-isi">
                    <h5>Kuliah Awal</h5>
                    <?php if ($_GET['type'] == 'program-pasca-sarjana'): ?>
                    <?php // echo $this->setting['sarjana_content'] ?>
                    <p><?php echo $this->setting['sarjana1_kuliah_awal'] ?></p>
                    <?php else: ?>
                    <p><?php echo $this->setting['sarjana2_kuliah_awal'] ?></p>
                    <?php endif ?>
                </div>
            </div>
            <div class="col-md-20">
                <div class="box-isi">
                    <h5>Formulir Pendaftaran</h5>
                    <?php if ($_GET['type'] == 'program-pasca-sarjana'): ?>
                        <?php $file_nm = $this->setting['sarjana1_form_diterima']; ?>
                    <?php else: ?>
                        <?php $file_nm = $this->setting['sarjana2_form_diterima']; ?>
                    <?php endif ?>

                    <a target="_blank" download href="<?php echo Yii::app()->baseUrl; ?>/images/static/<?php echo $file_nm; ?>">
                        <p>Download</p>
                        <img src="<?php echo $this->assetBaseurl; ?>download.png" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>