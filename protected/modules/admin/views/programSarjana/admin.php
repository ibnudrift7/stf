<?php
$this->breadcrumbs=array(
	'Tb Program Sarjanas'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List TbProgramSarjana','url'=>array('index')),
	array('label'=>'Add TbProgramSarjana','url'=>array('create')),
);
?>

<h1>Manage Tb Program Sarjanas</h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'tb-program-sarjana-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'jenjang_id',
		'studi_id',
		'title_id',
		'title_en',
		'content_id',
		/*
		'content_en',
		'sorts',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
