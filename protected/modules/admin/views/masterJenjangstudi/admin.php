<?php
$this->breadcrumbs=array(
	'Master Jenjangstudis'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List MasterJenjangstudi','url'=>array('index')),
	array('label'=>'Add MasterJenjangstudi','url'=>array('create')),
);
?>

<h1>Manage Master Jenjangstudis</h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'master-jenjangstudi-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'nama',
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
