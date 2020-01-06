<?php

/**
 * This is the model class for table "tb_kegiatan_univ".
 *
 * The followings are the available columns in table 'tb_kegiatan_univ':
 * @property string $id
 * @property string $title_en
 * @property string $title_id
 * @property string $time_start
 * @property string $time_end
 * @property string $date_input
 * @property string $date_event
 */
class KegiatanUniv extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return KegiatanUniv the static model class
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
		return 'tb_kegiatan_univ';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('title_en, title_id, date_event', 'required'),
			// array('id', 'length', 'max'=>20),
			array('title_en, title_id, time_end', 'length', 'max'=>225),
			// The following rule is used by search().
			array('time_start, time_end, date_input','safe'),
			// Please remove those attributes that should not be searched.
			array('id, title_en, title_id, time_start, time_end, date_input, date_event', 'safe', 'on'=>'search'),
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
			'title_en' => 'Title English',
			'title_id' => 'Title Indonesia',
			'time_start' => 'Time Start',
			'time_end' => 'Duration Time',
			'date_input' => 'Date Input',
			'date_event' => 'Date Event',
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
		$criteria->compare('title_en',$this->title_en,true);
		$criteria->compare('title_id',$this->title_id,true);
		$criteria->compare('time_start',$this->time_start,true);
		$criteria->compare('time_end',$this->time_end,true);
		$criteria->compare('date_input',$this->date_input,true);
		$criteria->compare('date_event',$this->date_event,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}