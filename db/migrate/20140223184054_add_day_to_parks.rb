class AddDayToParks < ActiveRecord::Migration
  def change
    add_column :parks, :LM, :string
    add_column :parks, :LP, :string
    add_column :parks, :MM, :string
    add_column :parks, :MP, :string
    add_column :parks, :MEM, :string
    add_column :parks, :MEP, :string
    add_column :parks, :GM, :string
    add_column :parks, :GP, :string
    add_column :parks, :VM, :string
    add_column :parks, :VP, :string
    add_column :parks, :SM, :string
    add_column :parks, :SP, :string
    add_column :parks, :DM, :string
    add_column :parks, :DP, :string
  end
end
