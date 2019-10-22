<?php
$this->breadcrumbs=array(
	'Page Sarjanas'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'PageSarjana',
	'subtitle'=>'Add PageSarjana',
);

$this->menu=array(
	array('label'=>'List PageSarjana', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>