class AddPreferredaddressToUsers < ActiveRecord::Migration
  def change
    add_column :users, :downtown, :string
    add_column :users, :home, :string
    add_column :users, :office, :string
    add_column :users, :other, :string
    add_column :users, :prefadd, :string
  end
end
