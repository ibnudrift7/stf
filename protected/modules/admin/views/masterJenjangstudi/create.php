<?php
$this->breadcrumbs=array(
	'Master  Jenjang studi'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Master Jenjang studi',
	'subtitle'=>'Add Master Jenjang studi',
);

$this->menu=array(
	array('label'=>'List Master Jenjang studi', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>