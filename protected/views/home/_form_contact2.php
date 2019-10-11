<!-- start form c -->
<div class="box-form tl-contact-form">
  <div class="mw665">
    <div class="text-left">
    <div class="clear"></div>
  <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
                  'type'=>'',
                  'enableAjaxValidation'=>false,
                  'clientOptions'=>array(
                      'validateOnSubmit'=>false,
                  ),
                  'htmlOptions' => array(
                      'enctype' => 'multipart/form-data',
                  ),
              )); ?>
   <?php echo $form->errorSummary($model, '', '', array('class'=>'alert alert-danger')); ?>
    <?php if(Yii::app()->user->hasFlash('success')): ?>
        <?php $this->widget('bootstrap.widgets.TbAlert', array(
            'alerts'=>array('success'),
        )); ?>
    <?php endif; ?>

    <div class="row default">
      <div class="col-md-30 col-sm-30">
        <div class="form-group">
            <label for="exampleInputName">Name</label>
            <?php echo $form->textField($model, 'name', array('class'=>'form-control')); ?>
        </div>
      </div>
      <div class="col-md-30 col-sm-30">
        
        <div class="form-group">
            <label for="exampleInputEmail">Email</label>
            <?php echo $form->textField($model, 'email', array('class'=>'form-control')); ?>
        </div>
      </div>
    </div>

    <div class="row default">
      <div class="col-md-30 col-sm-30">
        <div class="form-group">
            <label for="exampleInputPhone">Phone</label>
            <?php echo $form->textField($model, 'phone', array('class'=>'form-control')); ?>
        </div>
      </div>
      <div class="col-md-30 col-sm-30">
        <div class="form-group">
            <label for="exampleInputCompany">Company</label>
            <?php echo $form->textField($model, 'company', array('class'=>'form-control')); ?>
        </div>
      </div>
    </div>

    <div class="row default">
      <div class="col-md-60 col-sm-60 col-lg-60">
        <div class="form-group">
            <label for="exampleInputMessage">Message</label> 
            <div class="clear"></div>
            <?php echo $form->textArea($model, 'body', array('class'=>'form-control', 'rows'=>4)); ?>
        </div>
      </div>
      <div class="clear"></div>

      <div class="col-md-60 col-sm-60 col-lg-60">
        <div class="row default">
          <div class="col-md-30 col-sm-30">
            <div class="fright-inpd">
              <div class="form-group mb-0">
                <div class="fleft">
                  <div class="g-recaptcha" data-sitekey="6LcJGr0UAAAAAPbWOfqycF8feudUpPFhRmC5s0Tv"></div>
                </div>
                <div class="clear"></div>
              </div>
            </div>
          </div>
          <div class="col-md-30 col-sm-30">
            <div class="fright">
              <button type="submit" class="btn btn-dark btns-submit-bt">SUBMIT</button>
            </div>
          </div>
        </div>

      </div>
    </div>

  <?php $this->endWidget(); ?>
      <div class="clear height-30"></div>
    <div class="clear"></div>
  </div>

  <div class="clear"></div>
</div>

<div class="clear"></div>
</div>
<!-- end form c -->
<script src='https://www.google.com/recaptcha/api.js'></script>