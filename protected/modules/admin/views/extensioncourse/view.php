<?php
$this->breadcrumbs=array(
	'Extensioncourses'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Extensioncourse', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Extensioncourse', 'icon'=>'plus-sign','url'=>array('create')),
	array('label'=>'Edit Extensioncourse', 'icon'=>'pencil','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete Extensioncourse', 'icon'=>'trash','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
);
?>

<h1>View Extensioncourse #<?php echo $model->id; ?></h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'title_id',
		'title_en',
		'content_id',
		'content_en',
		'register_link',
		'image',
		'sorts',
		'active',
	),
)); ?>
