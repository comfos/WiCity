class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :n1
      t.integer :n2
      t.string :Timeg, default: "0"
      t.string :Timew, default: "0"
      t.string :Distance, default: "0"
      t.string :FlussIn, default: "0"
      t.string :FlussOut, default: "0"

      t.timestamps
    end

    add_index :links, [:n1, :n2], :unique => true

  end
end
