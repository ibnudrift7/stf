<?php
$this->breadcrumbs=array(
	'Extension course'=>array('index'),
	// $model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Extension course',
	'subtitle'=>'Edit Extension course',
);

$this->menu=array(
	array('label'=>'List Extension course', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Extension course', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View Extension course', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>