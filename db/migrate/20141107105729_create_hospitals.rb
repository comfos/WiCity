class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.string :lat
      t.string :lng
      t.string :LM, default: "0:00 - 13:00"
      t.string :LP, default: "13:00 - 24:00"
      t.string :MM, default: "0:00 - 13:00"
      t.string :MP, default: "13:00 - 24:00"
      t.string :MEM, default: "0:00 - 13:00"
      t.string :MEP, default: "13:00 - 24:00"
      t.string :GM, default: "0:00 - 13:00"
      t.string :GP, default: "13:00 - 24:00"
      t.string :VM, default: "0:00 - 13:00"
      t.string :VP, default: "13:00 - 24:00"
      t.string :SM, default: "0:00 - 13:00"
      t.string :SP, default: "13:00 - 24:00"
      t.string :DM, default: "0:00 - 13:00"
      t.string :DP, default: "13:00 - 24:00"

      t.timestamps
    end
  end
end
