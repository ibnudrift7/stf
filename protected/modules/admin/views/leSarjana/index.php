<?php
$this->breadcrumbs=array(
	'Page Sarjana',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Page Sarjana',
	'subtitle'=>'Data Page Sarjana',
);

$this->menu=array(
	array('label'=>'Add Page Sarjana', 'icon'=>'plus-sign','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>

<div class="widgetbox block-rightcontent">                        
		    <div class="headtitle">
		        <h4 class="widgettitle">Page Sarjana</h4>
		    </div>
		    <div class="widgetcontent">
<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>
	<div class="row-fluid">
		<div class="span3">
			<?php 
			$d_typekat = FixMenuAkademik::model()->findAll();
			$list_type = CHtml::listData($d_typekat, 
		                'id', 'nama');
			?>
			<?php echo $form->dropDownListRow($model, 'type_kategori', $list_type, array()); ?>
		</div>
		<div class="span3">
			<label class="required" for="PrdProduct_category_id">Category</label>
			<select id="PrdProduct_category_id" name="PageSarjana[category_id]" class="input-block-level span12">
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
			<script type="text/javascript">
			jQuery('#PrdProduct_category_id').val('<?php echo $model->category_id ?>');
			</script>
		</div>
		<div class="span4">
			<label for="">&nbsp;</label>
			<?php $this->widget('bootstrap.widgets.TbButton', array(
				'buttonType'=>'submit',
				'type'=>'primary',
				'label'=>'Search',
			)); ?>
			<?php $this->widget('bootstrap.widgets.TbButton', array(
				// 'buttonType'=>'button',
				'type'=>'primary',
				'label'=>'Reset',
				'url'=>Yii::app()->createUrl($this->route),
			)); ?>
		</div>
	</div>

	

<?php $this->endWidget(); ?>
</div>
</div>
<div class="divider10"></div>

<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'page-sarjana-grid',
	'dataProvider'=>$model->search(),
	// 'filter'=>$model,
	'enableSorting'=>false,
	'summaryText'=>false,
	'type'=>'bordered',
	'columns'=>array(
		// 'id',
		// 'type_kategori',
		array(
			'header'=>'Type',
			'type'=>'raw',
			'value'=>'FixMenuAkademik::model()->find($data->type_kategori)->nama',
		),
		
		// 'category_id',
		array(
			'header'=>'Category',
			'type'=>'raw',
			'value'=>'PrdCategoryDescription::model()->find("category_id=$data->category_id")->name',
			// 'value'=>'$data->category_id',
		),

		'title',
		// 'subtitle',
		// 'content',
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			'template'=>'{update} &nbsp; {delete}',
		),
	),
)); ?>
