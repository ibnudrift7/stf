<?php
$this->breadcrumbs=array(
	'Data Sarjana'=>array('index'),
	// $model->title=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Data Sarjana',
	'subtitle'=>'Edit Data Sarjana',
);

$this->menu=array(
	array('label'=>'List Data Sarjana', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Data Sarjana', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View Data Sarjana', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model, 'modelCategory'=> $modelCategory)); ?>