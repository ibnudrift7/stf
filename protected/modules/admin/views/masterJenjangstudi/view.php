<?php
$this->breadcrumbs=array(
	'Master Jenjangstudis'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List MasterJenjangstudi', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add MasterJenjangstudi', 'icon'=>'plus-sign','url'=>array('create')),
	array('label'=>'Edit MasterJenjangstudi', 'icon'=>'pencil','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete MasterJenjangstudi', 'icon'=>'trash','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
);
?>

<h1>View MasterJenjangstudi #<?php echo $model->id; ?></h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'nama',
	),
)); ?>
