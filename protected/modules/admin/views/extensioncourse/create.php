<?php
$this->breadcrumbs=array(
	'Extension course'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Extension course',
	'subtitle'=>'Add Extension course',
);

$this->menu=array(
	array('label'=>'List Extension course', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/>
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>