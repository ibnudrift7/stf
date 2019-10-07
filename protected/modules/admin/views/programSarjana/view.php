<?php
$this->breadcrumbs=array(
	'Tb Program Sarjanas'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List TbProgramSarjana', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add TbProgramSarjana', 'icon'=>'plus-sign','url'=>array('create')),
	array('label'=>'Edit TbProgramSarjana', 'icon'=>'pencil','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete TbProgramSarjana', 'icon'=>'trash','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
);
?>

<h1>View TbProgramSarjana #<?php echo $model->id; ?></h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'jenjang_id',
		'studi_id',
		'title_id',
		'title_en',
		'content_id',
		'content_en',
		'sorts',
	),
)); ?>
