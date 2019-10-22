<?php
$this->breadcrumbs=array(
	'Page Sarjanas'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List PageSarjana', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add PageSarjana', 'icon'=>'plus-sign','url'=>array('create')),
	array('label'=>'Edit PageSarjana', 'icon'=>'pencil','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete PageSarjana', 'icon'=>'trash','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
);
?>

<h1>View PageSarjana #<?php echo $model->id; ?></h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'type_kategori',
		'category_id',
		'title',
		'subtitle',
		'content',
	),
)); ?>
