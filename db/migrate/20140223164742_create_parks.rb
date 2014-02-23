class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name
      t.string :address
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
