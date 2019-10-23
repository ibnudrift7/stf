<?php
$this->breadcrumbs=array(
	'Data Sarjana'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Data Sarjana',
	'subtitle'=>'Add Data Sarjana',
);

$this->menu=array(
	array('label'=>'List Data Sarjana', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/>
<?php echo $this->renderPartial('_form', array('model'=>$model, 'modelCategory'=> $modelCategory)); ?>