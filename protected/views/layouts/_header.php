<?php 
    $e_activemenu = $this->action->id;
    $controllers_ac = $this->id;
    $session=new CHttpSession;
    $session->open();
    $login_member = $session['login_member'];

    $active_menu_pg = $controllers_ac.'/'.$e_activemenu;
?>
<header class="head <?php if ($active_menu_pg != 'home/index'): ?>head_inisdes<?php endif ?>">
  <div class="tops_head">
    <div class="prelatife container">
      <div class="row">
        <div class="col-md-25">
          <div class="lft_mnu">
            <ul class="list-inline">
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Beranda') ?></a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/tentangkami', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Tentang Kami') ?></a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/akademiksiadri', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Akademik') ?></a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/penelitian', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Penelitian') ?></a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'type'=> 'berita', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Komunitas') ?></a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-35">
          <ul class="list-inline rhd_right">
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/contact', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'HUBUNGI KAMI') ?> &nbsp;<i class="fa fa-paper-plane"></i></a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/penerimaansarjana', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'PENERIMAAN') ?> &nbsp;<i class="fa fa-user-o"></i></a></li>
              <li class="list-inline-item"><a href="https://wa.me/<?php echo $this->setting['contact_wa'] ?>">WHATSAPP CHAT &nbsp;<i class="fa fa-whatsapp"></i></a></li>
              <li class="list-inline-item lasts_lang">
                <?php
                $get = $_GET; $get['lang'] = 'id';
                ?>
                <a class="<?php if (Yii::app()->language == 'id'): ?>active<?php endif ?>" href="<?php echo $this->createUrl($this->route, $get) ?>">IN</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                <?php
                $get = $_GET; $get['lang'] = 'en';
                ?>
                <a class="<?php if (Yii::app()->language == 'en'): ?>active<?php endif ?>" href="<?php echo $this->createUrl($this->route, $get) ?>">EN</a>
              </li>
          </ul>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <div class="bottoms_head">
    <div class="prelatife container">
      <div class="row">
        <div class="col-md-40">
          <div class="lg-head d-inline-block align-middle">
            <a href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=>Yii::app()->language)); ?>">
              <?php if ($active_menu_pg != 'home/index'): ?>
              <img src="<?php echo $this->assetBaseurl; ?>heads_logo_inside.png" alt="" class="img-fluid">  
              <?php else: ?>
              <img src="<?php echo $this->assetBaseurl; ?>heads_logo.png" alt="" class="img-fluid">
              <?php endif ?>
            </a>
          </div>
          <div class="d-inline-block align-middle px-4">
            <div class="bck_lines"></div>
          </div>
          <div class="d-inline-block align-middle latsn">
            <?php if (Yii::app()->language == 'en'): ?>
            <i>Out of Philosophy Clarity</i><br>
            <?php else: ?>
            <i>Ex Philosophia Claritas</i><br>
            <?php endif ?>
            <?php echo Tt::t('front', 'Dari Filsafat Muncul Kejernihan') ?>
          </div>

        </div>
        <div class="col-md-20">
          
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <div class="clear"></div>
</header>