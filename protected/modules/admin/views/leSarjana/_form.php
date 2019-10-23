<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'page-sarjana-form',
    'type'=>'horizontal',
	'enableAjaxValidation'=>false,
	'clientOptions'=>array(
		'validateOnSubmit'=>false,
	),
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
)); ?>


<div class="widget">
<h4 class="widgettitle">Data Sarjana</h4>
<div class="widgetcontent">
	<?php echo $form->errorSummary($model); ?>
	<?php if(Yii::app()->user->hasFlash('success')): ?>
	    <?php $this->widget('bootstrap.widgets.TbAlert', array(
	        'alerts'=>array('success'),
	    )); ?>
	<?php endif; ?>
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

	<?php 
	$d_typekat = FixMenuAkademik::model()->findAll();
	$list_type = CHtml::listData($d_typekat, 
                'id', 'nama');
	?>

	<?php
	$arrayCategory = array();
	foreach ($modelCategory as $key => $value) {
		array_push($arrayCategory, $value->category_id);
	}
	// var_dump($arrayCategory);
	?>

	<div class="control-group ">
		<label class="control-label" for="PageSarjana_category_id">Category</label>
		<div class="controls">
			<select name="PageSarjana[category_id]" multiple="multiple" class="input-block-level">
			<?php 
			$dataCategory = (PrdCategory::model()->categoryTree('category', $this->languageID));
			foreach ($dataCategory as $val): ?>
			<?php if (count($val['children']) > 0): ?>
				<optgroup label="<?php echo $val['title'] ?>">
					<?php foreach ($val['children'] as $k => $v): ?>
					<option value="<?php echo $v['id'] ?>" <?php if ($v['id'] == $model->category_id): ?>selected="selected"<?php endif ?>><?php echo $v['title'] ?></option>
					<?php endforeach ?>
				</optgroup>
				<?php else: ?>
				<option value="<?php echo $val['id'] ?>" <?php if ($val['id'] == $model->category_id): ?>selected="selected"<?php endif ?>><?php echo $val['title'] ?></option>
				<?php endif ?>
			<?php endforeach ?>
			</select>
		</div>
	</div>

	<?php echo $form->dropDownListRow($model, 'type_kategori', $list_type, array()); ?>

	<?php // echo $form->textFieldRow($model,'category_id',array('class'=>'span5')); ?>

	<div class="row-fluid">
		<div class="span12">
			<?php echo $form->textFieldRow($model,'title',array('class'=>'span5','maxlength'=>225)); ?>	
			<?php echo $form->textAreaRow($model,'content',array('rows'=>3, 'class'=>'span8 redactor')); ?>	
		</div>
	</div>
	
	<!-- <div class="divider5"></div> -->
	<hr>
	<div class="divider5"></div>

	<div class="row-fluid">
		<div class="span12">
			<?php echo $form->textFieldRow($model,'title_en',array('class'=>'span5','maxlength'=>225)); ?>	
			<?php echo $form->textAreaRow($model,'content_en',array('rows'=>3, 'class'=>'span8 redactor')); ?>
		</div>
	</div>

	

	<?php // echo $form->textAreaRow($model,'subtitle',array('rows'=>6, 'cols'=>50, 'class'=>'span8')); ?>

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
