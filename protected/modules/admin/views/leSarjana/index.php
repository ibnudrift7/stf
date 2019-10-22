<?php
$this->breadcrumbs=array(
	'Page Sarjanas',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'PageSarjana',
	'subtitle'=>'Data PageSarjana',
);

$this->menu=array(
	array('label'=>'Add PageSarjana', 'icon'=>'th-list','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>
<h1>PageSarjana</h1>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'page-sarjana-grid',
	'dataProvider'=>$model->search(),
	// 'filter'=>$model,
	'enableSorting'=>false,
	'summaryText'=>false,
	'type'=>'bordered',
	'columns'=>array(
		'id',
		'type_kategori',
		'category_id',
		'title',
		'subtitle',
		'content',
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			'template'=>'{update} &nbsp; {delete}',
		),
	),
)); ?>
