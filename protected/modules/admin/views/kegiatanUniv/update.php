<?php
$this->breadcrumbs=array(
	'Kegiatan Univs'=>array('index'),
	// $model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'KegiatanUniv',
	'subtitle'=>'Edit KegiatanUniv',
);

$this->menu=array(
	array('label'=>'List KegiatanUniv', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add KegiatanUniv', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View KegiatanUniv', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>