<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'kegiatan-univ-form',
    'type'=>'horizontal',
	'enableAjaxValidation'=>false,
	'clientOptions'=>array(
		'validateOnSubmit'=>false,
	),
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
)); ?>

<?php echo $form->errorSummary($model); ?>

<div class="widget">
<h4 class="widgettitle">Data KegiatanUniv</h4>
<div class="widgetcontent">
	<div class="row-fluid">
		<div class="span5">
			<?php echo $form->textFieldRow($model,'title_en',array('class'=>'span12','maxlength'=>225)); ?>
		</div>
		<div class="span5">
			<?php echo $form->textFieldRow($model,'title_id',array('class'=>'span12','maxlength'=>225)); ?>
		</div>
	</div>

	<div class="row-fluid">
		<div class="span5">
			<?php echo $form->textFieldRow($model,'time_start',array('class'=>'span12 timepicker')); ?>
		</div>
		<div class="span5">
			<?php echo $form->textFieldRow($model,'time_end',array('class'=>'span12','maxlength'=>225)); ?>
		</div>
	</div>

	<?php // echo $form->textFieldRow($model,'date_input',array('class'=>'span5 datepicker')); ?>

	<div class="row-fluid">
		<div class="span5">
			<?php echo $form->textFieldRow($model,'date_event',array('class'=>'span12 datepicker')); ?>
		</div>
	</div>

		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType'=>'submit',
			'type'=>'primary',
			'label'=>$model->isNewRecord ? 'Add' : 'Save',
		)); ?>
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			// 'buttonType'=>'submit',
			// 'type'=>'info',
			'url'=>CHtml::normalizeUrl(array('index')),
			'label'=>'Batal',
		)); ?>
</div>
</div>
<div class="alert">
  <button type="button" class="close" data-dismiss="alert">×</button>
  <strong>Warning!</strong> Fields with <span class="required">*</span> are required.
</div>

<?php $this->endWidget(); ?>
