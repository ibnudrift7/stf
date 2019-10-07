<?php
$this->breadcrumbs=array(
	'Master Jenjangstudis',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Master Jenjang studi',
	'subtitle'=>'Data Master Jenjang studi',
);

$this->menu=array(
	array('label'=>'Add Master Jenjang studi', 'icon'=>'plus-sign','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>
<h1>Master Jenjang studi</h1>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'master-jenjangstudi-grid',
	'dataProvider'=>$model->search(),
	// 'filter'=>$model,
	'enableSorting'=>false,
	'summaryText'=>false,
	'type'=>'bordered',
	'columns'=>array(
		// 'id',
		'nama',
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			'template'=>'{update} &nbsp; {delete}',
		),
	),
)); ?>
