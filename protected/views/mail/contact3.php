<?php
$baseUrl = Yii::app()->request->hostInfo . Yii::app()->request->baseUrl;
$url = Yii::app()->request->hostInfo;
?>
<div bgcolor="#ffffff">
<font face="tahoma, arial"> 
<table border="0" cellpadding="0" cellspacing="0" >
	<tr>
		<td colspan="3">Detail Information Extension</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>:</td>
		<td><?php echo $model->name; ?></td>
	</tr>
	<tr>
		<td>Phone</td>
		<td>:</td>
		<td><?php echo $model->phone; ?></td>
	</tr>
	
	<tr>
		<td>Email</td>
		<td>:</td>
		<td><?php echo $model->email; ?></td>
	</tr>
	<tr>
		<td>Extension</td>
		<td>:</td>
		<td><?php echo $model->extension; ?></td>
	</tr>
	<tr>
		<td>Tanggal Lahir</td>
		<td>:</td>
		<td><?php echo $model->tanggal_lahir; ?></td>
	</tr>
	<tr>
		<td>Pendidikan Terakhir</td>
		<td>:</td>
		<td><?php echo $model->pendidikan_terakhir; ?></td>
	</tr>
	
	
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
</table>

</font>