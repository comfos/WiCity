class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.string :lat
      t.string :lng
      t.string :phone
      t.string :url
      t.integer :typ, default: 0

      t.timestamps
    end
  end
end
