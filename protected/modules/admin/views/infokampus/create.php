<?php
$this->breadcrumbs=array(
	'Info Kampus'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-send-o',
	'title'=>'Info Kampus',
	'subtitle'=>'Add Info Kampus',
);

$this->menu=array(
	array('label'=>'List Info Kampus', 'icon'=>'th-list','url'=>array('index')),
);
?>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form', array('model'=>$model, 'modelDesc'=>$modelDesc)); ?>