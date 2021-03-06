<?php

/**
 * This is the model class for table "tb_page_sarjana".
 *
 * The followings are the available columns in table 'tb_page_sarjana':
 * @property string $id
 * @property integer $type_kategori
 * @property integer $category_id
 * @property string $title
 * @property string $subtitle
 * @property string $content
 */
class PageSarjana extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return PageSarjana the static model class
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
		return 'tb_page_sarjana';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('type_kategori', 'required'),
			array('type_kategori, category_id', 'numerical', 'integerOnly'=>true),
			array('title', 'length', 'max'=>225),
			array('subtitle, content, title_en, subtitle_en, content_en', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, type_kategori, category_id, title, subtitle, content', 'safe', 'on'=>'search'),
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
			'type_kategori' => 'Type Kategori',
			'category_id' => 'Category',
			'title' => 'Title Indonesia',
			'subtitle' => 'Subtitle Indonesia',
			'content' => 'Content Indonesia',
			'title_en' => 'Title English',
			'subtitle_en' => 'Subtitle English',
			'content_en' => 'Content English',
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
		$criteria->compare('type_kategori',$this->type_kategori);
		$criteria->compare('category_id',$this->category_id);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('subtitle',$this->subtitle,true);
		$criteria->compare('content',$this->content,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}