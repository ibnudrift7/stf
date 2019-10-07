<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id),array('view','id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('title_en')); ?>:</b>
	<?php echo CHtml::encode($data->title_en); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('title_id')); ?>:</b>
	<?php echo CHtml::encode($data->title_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('time_start')); ?>:</b>
	<?php echo CHtml::encode($data->time_start); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('time_end')); ?>:</b>
	<?php echo CHtml::encode($data->time_end); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('date_input')); ?>:</b>
	<?php echo CHtml::encode($data->date_input); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('date_event')); ?>:</b>
	<?php echo CHtml::encode($data->date_event); ?>
	<br />


</div>