class CreateNodos < ActiveRecord::Migration
  def change
    create_table :nodos do |t|
      t.string :lat
      t.string :lng


      t.timestamps
    end
  end
end
