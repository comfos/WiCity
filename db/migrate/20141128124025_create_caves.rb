class CreateCaves < ActiveRecord::Migration
  def change
    create_table :caves do |t|
      t.string :name
      t.string :address
      t.string :lat
      t.string :lng
      t.string :LM, default: "0:00 - 0:00"
      t.string :LP, default: "0:00 - 0:00"
      t.string :MM, default: "0:00 - 0:00"
      t.string :MP, default: "0:00 - 0:00"
      t.string :MEM, default: "0:00 - 0:00"
      t.string :MEP, default: "0:00 - 0:00"
      t.string :GM, default: "0:00 - 0:00"
      t.string :GP, default: "0:00 - 0:00"
      t.string :VM, default: "0:00 - 0:00"
      t.string :VP, default: "0:00 - 0:00"
      t.string :SM, default: "0:00 - 0:00"
      t.string :SP, default: "0:00 - 0:00"
      t.string :DM, default: "0:00 - 0:00"
      t.string :DP, default: "0:00 - 0:00"

      t.timestamps
    end
  end
end
