class AddBornToUsers < ActiveRecord::Migration
  def change
    add_column :users, :born, :date
  end
end
