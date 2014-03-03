class CreateRadiotaxis < ActiveRecord::Migration
  def change
    create_table :radiotaxis do |t|
      t.string :name
      t.string :address
      t.string :lat
      t.string :lng
      t.string :phone

      t.timestamps
    end
  end
end
