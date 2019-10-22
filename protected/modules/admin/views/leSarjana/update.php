<?php
$this->breadcrumbs=array(
	'Page Sarjanas'=>array('index'),
	// $model->title=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'PageSarjana',
	'subtitle'=>'Edit PageSarjana',
);

$this->menu=array(
	array('label'=>'List PageSarjana', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add PageSarjana', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View PageSarjana', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>