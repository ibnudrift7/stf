<?php
$this->breadcrumbs=array(
	'Program Sarjana'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Program Sarjana',
	'subtitle'=>'Add Program Sarjana',
);

$this->menu=array(
	array('label'=>'List Program Sarjana', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>