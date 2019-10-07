<?php
$this->breadcrumbs=array(
	'Kegiatan Univs'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'KegiatanUniv',
	'subtitle'=>'Add KegiatanUniv',
);

$this->menu=array(
	array('label'=>'List KegiatanUniv', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>