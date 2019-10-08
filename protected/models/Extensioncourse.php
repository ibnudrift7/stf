<?php

/**
 * This is the model class for table "tb_extensioncourse".
 *
 * The followings are the available columns in table 'tb_extensioncourse':
 * @property string $id
 * @property string $title_id
 * @property string $title_en
 * @property string $content_id
 * @property string $content_en
 * @property string $register_link
 * @property string $image
 * @property integer $sorts
 * @property integer $active
 */
class Extensioncourse extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Extensioncourse the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tb_extensioncourse';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('title_id', 'required'),
			array('sorts, active', 'numerical', 'integerOnly'=>true),
			array('title_id, title_en', 'length', 'max'=>225),
			array('content_id, content_en, active, image, register_link', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, title_id, title_en, content_id, content_en, register_link, image, sorts, active', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'title_id' => 'Title Indonesia',
			'title_en' => 'Title English',
			'content_id' => 'Content Indonesia',
			'content_en' => 'Content English',
			'register_link' => 'Register Link',
			'image' => 'Image',
			'sorts' => 'Sorts',
			'active' => 'Active',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id,true);
		$criteria->compare('title_id',$this->title_id,true);
		$criteria->compare('title_en',$this->title_en,true);
		$criteria->compare('content_id',$this->content_id,true);
		$criteria->compare('content_en',$this->content_en,true);
		$criteria->compare('register_link',$this->register_link,true);
		$criteria->compare('image',$this->image,true);
		$criteria->compare('sorts',$this->sorts);
		$criteria->compare('active',$this->active);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}