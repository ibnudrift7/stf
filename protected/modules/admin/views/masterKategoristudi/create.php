<?php
$this->breadcrumbs=array(
	'Master Kategori studi'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'MasterKategori studi',
	'subtitle'=>'Add MasterKategori studi',
);

$this->menu=array(
	array('label'=>'List MasterKategori studi', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/>
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>