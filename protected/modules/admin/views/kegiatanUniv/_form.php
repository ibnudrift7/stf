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
			<?php 
			$noted_time = [
							'08:00:00'=>'08:00:00',
							'09:00:00'=>'09:00:00',
							'10:00:00'=>'10:00:00',
							'11:00:00'=>'11:00:00',
							'12:00:00'=>'12:00:00',
							'13:00:00'=>'13:00:00',
							'14:00:00'=>'14:00:00',
							'15:00:00'=>'15:00:00',
							'16:00:00'=>'16:00:00',
							'17:00:00'=>'17:00:00',
							'18:00:00'=>'18:00:00',
							'19:00:00'=>'19:00:00',
							'20:00:00'=>'20:00:00',
							'21:00:00'=>'21:00:00',
						  ];
			?>
			<?php echo $form->dropDownListRow($model,'time_start', $noted_time, array('class'=>'span12')); ?>
		</div>
		<div class="span5">
			<?php if ($model->scenario == 'insert'): ?>
			<?php
			$model->time_end = 3;
			?>
			<?php endif ?>
			<?php echo $form->textFieldRow($model,'time_end',array('class'=>'span12 hs_32', 'maxlength'=>225, 'append'=> 'Hours', 'hint'=>'Ex. Input Number duration Time ( 1, 2, 3 - 8) ',)); ?>
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

<style type="text/css">
	input.hs_32{
		height: 32px;
	}
</style>