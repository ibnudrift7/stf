<?php
$this->breadcrumbs=array(
	'Extensioncourses'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Extensioncourse','url'=>array('index')),
	array('label'=>'Add Extensioncourse','url'=>array('create')),
);
?>

<h1>Manage Extensioncourses</h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'extensioncourse-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'title_id',
		'title_en',
		'content_id',
		'content_en',
		'register_link',
		/*
		'image',
		'sorts',
		'active',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
