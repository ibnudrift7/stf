<?php
$this->breadcrumbs=array(
	'Master  Jenjang studi'=>array('index'),
	// $model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Master Jenjang studi',
	'subtitle'=>'Edit Master Jenjang studi',
);

$this->menu=array(
	array('label'=>'List Master Jenjang studi', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Master Jenjang studi', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View Master Jenjang studi', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>