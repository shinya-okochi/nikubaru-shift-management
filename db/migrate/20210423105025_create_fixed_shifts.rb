class CreateFixedShifts < ActiveRecord::Migration[5.0]
  def change
    create_table :fixed_shifts do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :user_id
      t.timestamps
    end
  end
end
