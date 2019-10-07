<?php
$this->breadcrumbs=array(
	'Master Kategori Studi',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Master Kategori Studi',
	'subtitle'=>'Data Master Kategori Studi',
);

$this->menu=array(
	array('label'=>'Add Master Kategori Studi', 'icon'=>'plus-sign','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>
<h1>Master Kategori Studi</h1>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'master-kategoristudi-grid',
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
