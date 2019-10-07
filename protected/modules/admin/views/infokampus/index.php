<?php
$this->breadcrumbs=array(
	'Info Kampus',
);

$this->pageHeader=array(
	'icon'=>'fa fa-send-o',
	'title'=>'Info Kampus',
	'subtitle'=>'Data Info Kampus',
);

$this->menu=array(
	array('label'=>' Add Info Kampus', 'icon'=>'plus-sign','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>
<div class="row-fluid">
	<div class="span8">
		<h1>Info Kampus</h1>
		<?php $this->widget('bootstrap.widgets.TbGridView',array(
			'id'=>'pg-testimonial-grid',
			'dataProvider'=>$model->search($this->languageID),
			// 'filter'=>$model,
			'enableSorting'=>false,
			'summaryText'=>false,
			'type'=>'bordered',
			'columns'=>array(
				// 'id',
				'name',
				'email',
				// array(
				// 	'name'=>'testimonial',
				// 	'value'=>'substr($data->testimonial, 0, 130)."..."',
				// 	),
				array(
					'name'=>'status',
					'type'=>'raw',
					'value'=>'($data->status == 0)? "Di Sembunyikan": "Di Tampilkan";',
					),
				// 'status',
				array(
					'name'=>'date',
					'type'=>'raw',
					'value'=>'date("d M y", strtotime($data->date) )',
					),
				array(
					'class'=>'bootstrap.widgets.TbButtonColumn',
					'template'=>'{update} &nbsp; {delete}',
				),
			),
		)); ?>
	</div>
	<div class="span4">
		<?php $this->renderPartial('/pages/page_menu') ?>
	</div>
</div>
