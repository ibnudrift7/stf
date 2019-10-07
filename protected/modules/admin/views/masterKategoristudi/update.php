<?php
$this->breadcrumbs=array(
	'Master Kategori Studi'=>array('index'),
	// $model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'MasterKategori Studi',
	'subtitle'=>'Edit MasterKategori Studi',
);

$this->menu=array(
	array('label'=>'List MasterKategori Studi', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add MasterKategori Studi', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View MasterKategori Studi', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>