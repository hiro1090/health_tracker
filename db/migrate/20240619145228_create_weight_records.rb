class CreateWeightRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :weight_records do |t|
      t.float :weight
      t.float :height
      t.float :bmi
      t.date :recorded_at

      t.timestamps
    end
  end
end
