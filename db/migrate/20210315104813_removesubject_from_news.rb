class RemovesubjectFromNews < ActiveRecord::Migration[5.0]
  def change
    remove_column :news, :datetime, :datetime
    remove_column :news, :subject, :text
    remove_column :news, :main, :text
    add_column :news, :username, :text
    add_column :news, :text, :text
  end
end
