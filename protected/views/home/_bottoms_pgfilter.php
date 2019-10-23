
<section class="home-sec-4">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-23">
                <div class="box-content-left">
                    <?php if (Yii::app()->language == 'en'): ?>
                    <h3>REGISTRATION DEPARTMENT</h3>
                    <p>Nearly 95% of International Students Driyarkara Philosophy High School recommends to other students to study Philosophy at our place.</p>    
                    <?php else: ?>
                    <h3>PENDAFTARAN JURUSAN</h3>
                    <p>Hampir 95% Mahasiswa Internasional Sekolah Tinggi Filsafat Driyarkara merekomendasikan kepada siswa lain untuk belajar Filsafat di tempat kami.</p>
                    <?php endif ?>
                </div>
            </div>
            <div class="col-md-37">
                <form class="filters_btm_nnda" method="post" action="<?php echo CHtml::normalizeUrl(array('/home/filters_ft')); ?>">
                    <div class="row">

                        <div class="col">
                            <?php 
                            $jenjangstudi = MasterJenjangstudi::model()->findAll();
                            ?>
                            <div class="form-group">
                                <select class="form-control" name="tipe_sarjana" id="exampleFormControlSelect1">
                                <option selected><?php echo Tt::t('front', 'Pilih Kategori Studi') ?></option>
                                <?php foreach ($jenjangstudi as $key => $value): ?>
                                    <option value="<?php echo $value->nama ?>"><?php echo $value->nama ?></option>
                                <?php endforeach ?>
                                </select>
                            </div>
                        </div>

                        <!-- <div class="col">
                            <?php 
                            $kategoristudi = MasterKategoristudi::model()->findAll();
                            ?>
                            <div class="form-group">
                                <select class="form-control" name="tipe_studi" id="exampleFormControlSelect1">
                                <option selected><?php echo Tt::t('front', 'Pilih Jenjang Studi') ?></option>
                                <?php foreach ($kategoristudi as $key => $value): ?>
                                    <option value="<?php echo $value->id ?>"><?php echo $value->nama ?></option>
                                <?php endforeach ?>
                                </select>
                            </div>
                        </div> -->
                        <div class="col">
                            <button type="submit" class="submit"><p><?php echo Tt::t('front', 'daftarkan diri anda') ?></p></button>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<style type="text/css">
    form.filters_btm_nnda button{
        cursor: pointer;
    }
</style>
