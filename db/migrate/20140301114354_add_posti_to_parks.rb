class AddPostiToParks < ActiveRecord::Migration
  def change
    add_column :parks, :capacity, :integer
    add_column :parks, :occupati, :integer
    add_column :parks, :flusso, :integer
  end
end
