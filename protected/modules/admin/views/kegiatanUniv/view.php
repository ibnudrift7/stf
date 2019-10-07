<?php
$this->breadcrumbs=array(
	'Kegiatan Univs'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List KegiatanUniv', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add KegiatanUniv', 'icon'=>'plus-sign','url'=>array('create')),
	array('label'=>'Edit KegiatanUniv', 'icon'=>'pencil','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete KegiatanUniv', 'icon'=>'trash','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
);
?>

<h1>View KegiatanUniv #<?php echo $model->id; ?></h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'title_en',
		'title_id',
		'time_start',
		'time_end',
		'date_input',
		'date_event',
	),
)); ?>
