class CreatePharms < ActiveRecord::Migration
  def change
    create_table :pharms do |t|
      t.string :name
      t.string :address
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
