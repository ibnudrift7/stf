<?php

class InfoKampusController extends ControllerAdmin
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layoutsAdmin/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			//'accessControl', // perform access control for CRUD operations
			array('admin.filter.AuthFilter', 
				'params'=>array(
					// 'actionAllowOnLogin'=>array('upload'),
				)
			),
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			(!Yii::app()->user->isGuest)?
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('delete','index','view','create','update'),
				'users'=>array(Yii::app()->user->name),
			):array(),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Infokampus;
		$modelDesc = array();
		foreach (Language::model()->getLanguage() as $key => $value) {
			$modelDesc[$value->code] = new InfokampusDescription;
		}
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Infokampus']))
		{
			$model->attributes=$_POST['Infokampus'];

			//validation Testimonial Description
			unset($modelDesc);
			$valid=true;

			foreach ($_POST['InfokampusDescription'] as $j => $mod) {
	            if (isset($_POST['InfokampusDescription'][$j])) {
	                $modelDesc[$j]=new InfokampusDescription; // if you had static model only
	                $modelDesc[$j]->attributes=$mod;
	                $lang = Language::model()->getName($j);
					$modelDesc[$j]->language_id = $lang->id;
	                $valid=$modelDesc[$j]->validate() && $valid;
	            }
	        }

	  //       $image = CUploadedFile::getInstance($model,'image');
			// if ($image->name != '') {
			// 	$model->image = substr(md5(time()),0,5).'-'.$image->name;
			// }

			if($model->validate() AND $valid){
				$transaction=$model->dbConnection->beginTransaction();
				try
				{

					// if ($image->name != '') {
					// 	$image->saveAs(Yii::getPathOfAlias('webroot').'/images/infokampus/'.$model->image);
					// }

					$model->date = date("Y-m-d H:i:s");

					$model->save();

					foreach ($modelDesc as $key => $value) {
						$value->parents_id=$model->id;
						$value->save();
					}

					Log::createLog("SetController Create $model->id");
					Yii::app()->user->setFlash('success','Data has been inserted');
				    $transaction->commit();
					$this->redirect(array('index'));
				}
				catch(Exception $ce)
				{
				    $transaction->rollback();
				}
			}
		}

		$this->render('create',array(
			'model'=>$model,
			'modelDesc'=>$modelDesc,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);
		$modelDesc = array();
		foreach (Language::model()->getLanguage() as $key => $value) {
			$modelDesc[$value->code] = Infokampus::model()->getDataDesc($model->id, $value->id);
			$modelDesc[$value->code] = ($modelDesc[$value->code]==null) ? new InfokampusDescription : $modelDesc[$value->code];
			// echo CHtml::errorSummary($modelDesc[$value->code]);
		}
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Infokampus']))
		{
			// $image = $model->image; //mengamankan nama file
			$model->attributes=$_POST['Infokampus'];
			// $model->image = $image; //mengembalikan nama file

			unset($modelDesc);
			$valid=true;
			foreach ($_POST['InfokampusDescription'] as $j => $mod) {
	            if (isset($_POST['InfokampusDescription'][$j])) {
	                $modelDesc[$j]=new InfokampusDescription; // if you had static model only
	                $modelDesc[$j]->attributes=$mod;
	                $lang = Language::model()->getName($j);
					$modelDesc[$j]->language_id = $lang->id;
	                $valid=$modelDesc[$j]->validate() && $valid;
	            }
	        }

	  //       $image = CUploadedFile::getInstance($model,'image');
			// if ($image->name != '') {
			// 	$model->image = substr(md5(time()),0,5).'-'.$image->name;
			// }

			if($model->validate() AND $valid){
				$transaction=$model->dbConnection->beginTransaction();
				try
				{

					// if ($image->name != '') {
					// 	$image->saveAs(Yii::getPathOfAlias('webroot').'/images/infokampus/'.$model->image);
					// }

					$model->save();

					InfokampusDescription::model()->deleteAll('parents_id = :id', array(':id'=>$model->id));
					foreach ($modelDesc as $key => $value) {
						$value->parents_id=$model->id;
						$value->save();
					}

					Log::createLog("SetController Update $model->id");
					Yii::app()->user->setFlash('success','Data Edited');
				    $transaction->commit();
					$this->redirect(array('index'));
				}
				catch(Exception $ce)
				{
				    $transaction->rollback();
				}
			}else{
				$model->addError('content', 'Mohon konten bahasa di lengkapi');
			}
		}

		$this->render('update',array(
			'model'=>$model,
			'modelDesc'=>$modelDesc,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		// if(Yii::app()->request->isPostRequest)
		// {
			// we only allow deletion via POST request
			$this->loadModel($id)->delete();

			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			// if(!isset($_GET['ajax']))
				$this->redirect( array('index'));
		// }
		// else
		// 	throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$model=new Infokampus('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Infokampus']))
			$model->attributes=$_GET['Infokampus'];

		$dataProvider=new CActiveDataProvider('Infokampus');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer the ID of the model to be loaded
	 */
	public function loadModel($id)
	{
		$model=Infokampus::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CModel the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='pg-testimonial-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
