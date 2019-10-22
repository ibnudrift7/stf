<?php echo $this->renderPartial('//home/_top_about_mnu', array('actives' => 'Info Kampus')); ?>

<section class="info-sec-1">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <div class="box-content">
                    <h3><?php echo strtoupper(Tt::t('front', 'Info Kampus')) ?></h3>
                    <div class="table-responsive">
                    <table>
                        <?php 
                        $criteria = new CDbCriteria;
                        $criteria->with = array('description');
                        $criteria->addCondition('status = "1"');
                        $criteria->addCondition('description.language_id = :language_id');
                        $criteria->params[':language_id'] = $this->languageID;
                        $criteria->order = 't.id DESC';
                        $data_info = Infokampus::model()->findAll($criteria);
                        ?>
                        <?php foreach ($data_info as $key => $value): ?>
                        <tr>
                            <td>
                                <div class="kiri">
                                    <h5><?php echo $value->description->title; ?></h5>
                                    <p><?php echo $value->description->content; ?></p>
                                </div>
                            </td>
                            <td>
                                <div class="deadline">
                                    <h5>TERAKHIR DITULIS</h5>
                                    <p><?php echo date('d F Y', strtotime($value->date)); ?></p>
                                </div>
                            </td>
                        </tr>
                        <?php endforeach ?>

                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php echo $this->renderPartial('//home/_bottoms_pgfilter', array()); ?>