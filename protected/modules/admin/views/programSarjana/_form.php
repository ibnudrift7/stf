<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'tb-program-sarjana-form',
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
        'imageUpload'=> $this->createUrl('admin/setting/uploadimage', array('type'=>'image')),
        'clipboardUploadUrl'=> $this->createUrl('admin/setting/uploadimage', array('type'=>'clip')),
    ),
    'plugins' => array(
        'clips' => array(
        ),
    ),
)); ?>

<div class="widget">
<h4 class="widgettitle">Data Program Sarjana</h4>
<div class="widgetcontent">

	<div class="row-fluid">
		<div class="span6">
			<?php 
			$m_jenjang = MasterJenjangstudi::model()->findAll();
			$data_jenjang = CHtml::listData($m_jenjang, 
                'id', 'nama');

			$m_kategori = MasterKategoristudi::model()->findAll();
			$data_studi = CHtml::listData($m_kategori, 
                'id', 'nama');
			?>
			<?php echo $form->dropDownListRow($model, 'jenjang_id', $data_jenjang,array('class'=>'span10', 'empty'=> '-- Choose --')); ?>
		</div>
		<div class="span6">
			<?php echo $form->dropDownListRow($model,'studi_id', $data_studi, array('class'=>'span10', 'empty'=> '-- Choose --')); ?>
		</div>
	</div>


	<div class="row-fluid">
		<div class="span6">
			<?php echo $form->textFieldRow($model,'title_id',array('class'=>'span10','maxlength'=>225)); ?>
		</div>
		<div class="span6">
			<?php echo $form->textFieldRow($model,'title_en',array('class'=>'span10','maxlength'=>225)); ?>
		</div>
	</div>

	<div class="row-fluid">
		<div class="span6">
			<?php echo $form->textAreaRow($model,'content_id',array('rows'=>3, 'class'=>'span11 redactor')); ?>
		</div>
		<div class="span6">
			<?php echo $form->textAreaRow($model,'content_en',array('rows'=>3, 'class'=>'span11 redactor')); ?>
		</div>
	</div>



	<?php echo $form->textFieldRow($model,'sorts',array('class'=>'span5')); ?>

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
