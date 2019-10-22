<?php
$this->breadcrumbs=array(
	'Page Sarjanas'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List PageSarjana','url'=>array('index')),
	array('label'=>'Add PageSarjana','url'=>array('create')),
);
?>

<h1>Manage Page Sarjanas</h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'page-sarjana-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'type_kategori',
		'category_id',
		'title',
		'subtitle',
		'content',
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
