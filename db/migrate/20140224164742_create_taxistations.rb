class CreateTaxistations < ActiveRecord::Migration
  def change
    create_table :taxistations do |t|
      t.string :name
      t.string :address
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
