<?php
$this->breadcrumbs=array(
	'Program Sarjana'=>array('index'),
	// $model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Program Sarjana',
	'subtitle'=>'Edit Program Sarjana',
);

$this->menu=array(
	array('label'=>'List Program Sarjana', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Program Sarjana', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View Program Sarjana', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>