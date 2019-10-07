<?php
$this->breadcrumbs=array(
	'Info Kampus'=>array('index'),
	// $model->name=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-send-o',
	'title'=>'Info Kampus',
	'subtitle'=>'Edit Info Kampus',
);

$this->menu=array(
	array('label'=>'List Info Kampus', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Info Kampus', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View Info Kampus', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model, 'modelDesc'=>$modelDesc)); ?>