<?php

class ArchiveController extends Controller
{

	public function actionIndex()
	{
		$this->layout='//layouts/column2';

		// $blog = ViewBlog::model()->findAll('active = 1 ORDER BY date_input DESC');

		$this->pageTitle = 'Archieve - ' . $this->pageTitle;

		$this->render('index', array(
			// 'blog'=> $blog,
		));
	}

	public function actionDetail($id)
	{
		$this->layout='//layouts/column2';

		$detail = ViewBlog::model()->find('id = :id', array(':id'=>$id));
		
		$this->pageTitle = ucwords($detail->title) . ' - ' . $this->pageTitle;
		$this->render('detail', array(
			'detail' => $detail,
		));
	}
}