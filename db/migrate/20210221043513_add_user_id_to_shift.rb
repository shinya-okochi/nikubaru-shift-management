class AddUserIdToShift < ActiveRecord::Migration[5.0]
  def change
    add_column :shifts, :user_id, :integer
  end
end
