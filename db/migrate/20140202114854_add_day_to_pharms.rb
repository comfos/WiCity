class AddDayToPharms < ActiveRecord::Migration
  def change
    add_column :pharms, :LM, :string
    add_column :pharms, :LP, :string
    add_column :pharms, :MM, :string
    add_column :pharms, :MP, :string
    add_column :pharms, :MEM, :string
    add_column :pharms, :MEP, :string
    add_column :pharms, :GM, :string
    add_column :pharms, :GP, :string
    add_column :pharms, :VM, :string
    add_column :pharms, :VP, :string
    add_column :pharms, :SM, :string
    add_column :pharms, :SP, :string
    add_column :pharms, :DM, :string
    add_column :pharms, :DP, :string
  end
end
