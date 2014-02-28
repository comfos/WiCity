class AddPhoneToParks < ActiveRecord::Migration
  def change
    add_column :parks, :phone, :string
  end
end
