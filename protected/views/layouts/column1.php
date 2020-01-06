<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>

<?php echo $this->renderPartial('//layouts/_header', array()); ?>

<!-- Start fcs -->
<?php
    $criteria=new CDbCriteria;
    $criteria->with = array('description');
    $criteria->addCondition('description.language_id = :language_id');
    $criteria->addCondition('active = 1');
    $criteria->params[':language_id'] = $this->languageID;
    $criteria->group = 't.id';
    $criteria->order = 't.id ASC';
    $slide = Slide::model()->with(array('description'))->findAll($criteria);
?>
<div class="fcs-wrapper outers_fcs_wrapper prelatife wrapper-slide">
    <div id="myCarousel_home" class="carousel carousel-fade" data-ride="carousel" data-interval="4500">
            <div class="carousel-inner">
                <?php foreach ($slide as $key => $value): ?>
                <div class="carousel-item <?php if($key == 0): ?>active<?php endif ?> home-slider-new">
                    <img class="w-100 d-none d-sm-block" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(1920,850, '/images/slide/'. $value->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="First slide">
                    <img class="w-100 d-block d-sm-none" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(600,980, '/images/slide/'. $value->image2 , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="<?php echo $value->image2 ?>">
                </div>
                <?php endforeach; ?>
            </div>
            <ol class="carousel-indicators">
                <?php foreach ($slide as $key => $value): ?>
                <li data-target="#myCarousel_home" data-slide-to="<?php echo $key ?>" <?php if ($key == 0): ?>class="active"<?php endif ?>></li>
                <?php endforeach; ?>
            </ol>
    </div>

    <div class="pos-nbottoms_lidn">
        <div class="prelatife container">
            <div class="blocks_bottomFcs_layslide">
                <div class="row">
                    <div class="col-md-17 p-4 col-smalls text-center">
                        <div class="d-inline-block align-middle lgo_small pr-3">
                            <img src="<?php echo $this->assetBaseurl ?>smalls-logo-nfcs.png" alt="" class="img img-fluid">
                        </div>
                        <div class="d-inline-block align-middle txtsn_small">
                            <p>Simak Program Studi <br>
                            <b>STF Driyarkara Jakarta</b></p>
                        </div>
                    </div>
                    <div class="col-md-43 p-4">
                        <form action="#" onsubmit="alert('underconstruction');" method="post" class="form-inline justify-content-center">
                            <div class="form-group mx-sm-2">
                            <label for="inputPassword1" class="sr-only">Option 1</label>
                            <select name="" id="inputPassword1" class="form-control">
                                <option value="">Pilih Kategori Studi</option>
                            </select>
                          </div>
                            <div class="form-group mx-sm-2">
                            <label for="inputPassword2" class="sr-only">Option 2</label>
                            <select name="" id="inputPassword2" class="form-control">
                                <option value="">Pilih Jenjang Studi</option>
                            </select>
                          </div>
                          <div class="form-group mx-sm-2">
                              <button type="submit" class="btn btn-primary">Lihat Informasi</button>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear clearfix"></div>
    </div>
</div>
<!-- End fcs -->

<?php echo $content ?>
<script type="text/javascript">
    $(document).ready(function(){
        
        if ($(window).width() >= 768) {
            var $item = $('#myCarousel_home.carousel .carousel-item'); 
            var $wHeight = $(window).height();
            $item.eq(0).addClass('active');
            $item.height($wHeight); 
            $item.addClass('full-screen');

            $('#myCarousel_home.carousel img.d-none.d-sm-block').each(function() {
              var $src = $(this).attr('src');
              var $color = $(this).attr('data-color');
              $(this).parent().css({
                'background-image' : 'url(' + $src + ')',
                'background-color' : $color
              });
              $(this).remove();
            });

            $(window).on('resize', function (){
              $wHeight = $(window).height();
              $item.height($wHeight);
            });

            $('#myCarousel_home.carousel').carousel({
              interval: 4000,
              pause: "false"
            });
        }

    });
</script>
<?php echo $this->renderPartial('//layouts/_footer', array()); ?>
<?php $this->endContent(); ?>
