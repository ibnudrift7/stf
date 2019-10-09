<?php

/**
 * This is the model class for table "tb_program_sarjana".
 *
 * The followings are the available columns in table 'tb_program_sarjana':
 * @property string $id
 * @property integer $jenjang_id
 * @property integer $studi_id
 * @property string $title_id
 * @property string $title_en
 * @property string $content_id
 * @property string $content_en
 * @property integer $sorts
 */
class TbProgramSarjana extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return TbProgramSarjana the static model class
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
		return 'tb_program_sarjana';
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
			array('jenjang_id, studi_id, sorts', 'numerical', 'integerOnly'=>true),
			array('title_id, title_en', 'length', 'max'=>225),
			// The following rule is used by search().
			array('title_en, content_id, content_en, sorts, type, subtitle_id, subtitle_en', 'safe'),
			// Please remove those attributes that should not be searched.
			array('id, jenjang_id, studi_id, title_id, title_en, content_id, content_en, sorts', 'safe', 'on'=>'search'),
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
			'jenjang_id' => 'Jenjang',
			'studi_id' => 'Studi',
			'title_id' => 'Title Indonesia',
			'title_en' => 'Title English',
			'content_id' => 'Content Indonesia',
			'content_en' => 'Content English',
			
			'subtitle_id' => 'Subtitle Indonesia',
			'subtitle_en' => 'Subtitle English',

			'link'=>'link',
			'type'=>'type',
			'sorts' => 'Sorts',
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
		$criteria->compare('jenjang_id',$this->jenjang_id);
		$criteria->compare('studi_id',$this->studi_id);
		$criteria->compare('title_id',$this->title_id,true);
		$criteria->compare('title_en',$this->title_en,true);
		$criteria->compare('content_id',$this->content_id,true);
		$criteria->compare('content_en',$this->content_en,true);
		$criteria->compare('sorts',$this->sorts);
		$criteria->compare('type',$this->type);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}