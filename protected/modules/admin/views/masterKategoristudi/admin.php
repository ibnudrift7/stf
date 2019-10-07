<?php
$this->breadcrumbs=array(
	'Master Kategoristudis'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List MasterKategoristudi','url'=>array('index')),
	array('label'=>'Add MasterKategoristudi','url'=>array('create')),
);
?>

<h1>Manage Master Kategoristudis</h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'master-kategoristudi-grid',
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
