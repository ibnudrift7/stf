<?php

/**
 * ContactForm class.
 * ContactForm is the data structure for keeping
 * contact form data. It is used by the 'contact' action of 'SiteController'.
 */
class ContactForm extends CFormModel
{
	public $name;
	public $phone;
	public $subject;
	public $email;
	public $address;
	public $city;
	public $country;
	public $curiculum_vitae;
	public $store_name;
	public $website;

	public $company;

	public $body;
	public $verifyCode;

	public $extension, $tanggal_lahir, $pendidikan_terakhir;
	/**
	 * Declares the validation rules.
	 */
	public function rules()
	{
		return array(
			// name, email, subject and body are required
			array('name, email', 'required', 'on'=>'insert'),

			array('name, email, phone, company, address, city, body', 'required', 'on'=>'in_agen'),
			// email has to be a valid email address
			array('email', 'email'),
			array('first_name, last_name, phone, email, address, city, country, curiculum_vitae, body, store_name, website, subject, company, extension, tanggal_lahir, pendidikan_terakhir', 'safe'),
			// verifyCode needs to be entered correctly
			// array('verifyCode', 'captcha', 'allowEmpty'=>!CCaptcha::checkRequirements()),
		);
	}

	/**
	 * Declares customized attribute labels.
	 * If not declared here, an attribute would have a label that is
	 * the same as its name with the first letter in upper case.
	 */
	public function attributeLabels()
	{
		return array(
			'verifyCode'=>Yii::t('main', 'Verification Code'),
			// 'name'=>Yii::t('main', 'Name'),
			'email'=>Yii::t('main', 'Email Address'),
			// 'subject'=>Yii::t('main', 'Subject'),
			'body'=>Yii::t('main', 'Messages'),
		);
	}
}