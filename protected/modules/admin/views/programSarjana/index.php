<?php
$this->breadcrumbs=array(
	'Program Sarjana',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Program Sarjana',
	'subtitle'=>'Data Program Sarjana',
);

$this->menu=array(
	array('label'=>'Add Program Sarjana', 'icon'=>'plus-sign','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>
<h1>TbProgramSarjana</h1>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'tb-program-sarjana-grid',
	'dataProvider'=>$model->search(),
	// 'filter'=>$model,
	'enableSorting'=>false,
	'summaryText'=>false,
	'type'=>'bordered',
	'columns'=>array(
		// 'id',
		'type',
		// 'jenjang_id',
		array(
			'header'=>'Jenjang',
			'type'=>'raw',
			'value'=>'MasterJenjangstudi::model()->findByPk($data->jenjang_id)->nama',
		),
		// 'studi_id',
		'title_id',
		// 'title_en',
		// 'content_id',
		/*
		'content_en',
		'sorts',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			'template'=>'{update} &nbsp; {delete}',
		),
	),
)); ?>
