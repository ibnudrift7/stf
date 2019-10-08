<?php
$this->breadcrumbs=array(
	'Extension course',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Extension course',
	'subtitle'=>'Data Extension course',
);

$this->menu=array(
	array('label'=>'Add Extension course', 'icon'=>'plus-sign','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>
<h1>Extension course</h1>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'extensioncourse-grid',
	'dataProvider'=>$model->search(),
	// 'filter'=>$model,
	'enableSorting'=>false,
	'summaryText'=>false,
	'type'=>'bordered',
	'columns'=>array(
		// 'id',
		'title_id',
		'register_link',
		/*
		'title_en',
		'content_id',
		'content_en',
		'image',
		'sorts',
		'active',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			'template'=>'{update} &nbsp; {delete}',
		),
	),
)); ?>
