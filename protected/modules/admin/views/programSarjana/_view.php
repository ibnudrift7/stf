<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id),array('view','id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('jenjang_id')); ?>:</b>
	<?php echo CHtml::encode($data->jenjang_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('studi_id')); ?>:</b>
	<?php echo CHtml::encode($data->studi_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('title_id')); ?>:</b>
	<?php echo CHtml::encode($data->title_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('title_en')); ?>:</b>
	<?php echo CHtml::encode($data->title_en); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('content_id')); ?>:</b>
	<?php echo CHtml::encode($data->content_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('content_en')); ?>:</b>
	<?php echo CHtml::encode($data->content_en); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('sorts')); ?>:</b>
	<?php echo CHtml::encode($data->sorts); ?>
	<br />

	*/ ?>

</div>