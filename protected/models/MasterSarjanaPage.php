<?php

/**
 * This is the model class for table "master_sarjana_page".
 *
 * The followings are the available columns in table 'master_sarjana_page':
 * @property string $id
 * @property integer $page_id
 * @property integer $kategoristudi_id
 * @property integer $jenjangstudi_id
 */
class MasterSarjanaPage extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return MasterSarjanaPage the static model class
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
		return 'master_sarjana_page';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('kategoristudi_id, jenjangstudi_id', 'required'),
			array('page_id, kategoristudi_id, jenjangstudi_id', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, page_id, kategoristudi_id, jenjangstudi_id', 'safe', 'on'=>'search'),
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
			'page_id' => 'Page',
			'kategoristudi_id' => 'Kategoristudi',
			'jenjangstudi_id' => 'Jenjangstudi',
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
		$criteria->compare('page_id',$this->page_id);
		$criteria->compare('kategoristudi_id',$this->kategoristudi_id);
		$criteria->compare('jenjangstudi_id',$this->jenjangstudi_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}