<?php
$this->breadcrumbs=array(
	'Kegiatan Univ',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Kegiatan Univ',
	'subtitle'=>'Data Kegiatan Univ',
);

$this->menu=array(
	array('label'=>'Add Kegiatan Univ', 'icon'=>'plus-sign','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>
<h1>Kegiatan Univ</h1>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'kegiatan-univ-grid',
	'dataProvider'=>$model->search(),
	// 'filter'=>$model,
	'enableSorting'=>false,
	'summaryText'=>false,
	'type'=>'bordered',
	'columns'=>array(
		// 'id',
		// 'title_en',
		'title_id',
		'date_input',
		// 'time_start',
		// 'time_end',
		/*
		'date_event',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			'template'=>'{update} &nbsp; {delete}',
		),
	),
)); ?>
