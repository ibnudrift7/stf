<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'extensioncourse-form',
    'type'=>'horizontal',
	'enableAjaxValidation'=>false,
	'clientOptions'=>array(
		'validateOnSubmit'=>false,
	),
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
)); ?>

<?php echo $form->errorSummary($model); ?>
<?php Yii::import('ext.imperavi-redactor-widget.ImperaviRedactorWidget'); ?>
<?php $this->widget('ImperaviRedactorWidget', array(
    'selector' => '.redactor',
    'options' => array(
        'imageUpload'=> $this->createUrl('/admin/setting/imgUpload', array('type'=>'image')),
        'clipboardUploadUrl'=> $this->createUrl('/admin/setting/imgUpload', array('type'=>'clip')),
    ),
    'plugins' => array(
        'clips' => array(
        ),
    ),
)); ?>
<div class="widget">
<h4 class="widgettitle">Data Extensioncourse</h4>
<div class="widgetcontent">
	<div class="row-fluid">
		<div class="span6">
			<?php echo $form->textFieldRow($model,'title_id',array('class'=>'span11','maxlength'=>225)); ?>
		</div>
		<div class="span6">
			<?php echo $form->textFieldRow($model,'title_en',array('class'=>'span11','maxlength'=>225)); ?>
		</div>
	</div>
	<div class="divider10"></div>

	<div class="row-fluid">
		<div class="span6">
			<?php echo $form->textAreaRow($model,'content_id',array('rows'=>4, 'class'=>'span8')); ?>
		</div>
		<div class="span6">
			<?php echo $form->textAreaRow($model,'content_en',array('rows'=>4, 'class'=>'span8')); ?>
		</div>
	</div>
	<div class="divider10"></div>

	<?php echo $form->textFieldRow($model,'register_link',array('class'=>'span4','maxlength'=>225)); ?>

	<?php echo $form->fileFieldRow($model,'image',array(
			'hint'=>'<b>Note:</b> Maximal upload file 2Mb')); ?>
			<?php if ($model->scenario == 'update' && $model->image != ''): ?>
			<div class="control-group">
				<label class="control-label">&nbsp;</label>
				<div class="controls">
					<a target="_blank" href="<?php echo Yii::app()->baseUrl.'/images/extensi/'. $model->image ?>"><i class="fa fa-pdf"></i> View Files</a>
				</div>
			</div>
			<?php endif; ?>

	<?php // echo $form->textFieldRow($model,'sorts',array('class'=>'span11')); ?>

	<?php echo $form->dropDownListRow($model, 'active', array(
        		'1'=>'Active',
        		'0'=>'Non Active',
        	)); ?>

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
