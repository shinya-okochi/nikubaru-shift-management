class AddNameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :text
    add_column :shifts, :date, :date
    add_column :shifts, :start_time, :time
    add_column :shifts, :end_time, :time
    add_column :news, :datetime, :datetime
    add_column :news, :subject, :text
    add_column :news, :main, :text
  end
end
