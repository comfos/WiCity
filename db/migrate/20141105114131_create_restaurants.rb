class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :lat
      t.string :lng
      t.string :LM
      t.string :LP
      t.string :MM
      t.string :MP
      t.string :MEM
      t.string :MEP
      t.string :GM
      t.string :GP
      t.string :VM
      t.string :VP
      t.string :SM
      t.string :SP
      t.string :DM
      t.string :DP
      t.string :phone

      t.timestamps
    end
  end
end
