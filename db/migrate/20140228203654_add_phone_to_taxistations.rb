class AddPhoneToTaxistations < ActiveRecord::Migration
  def change
    add_column :taxistations, :phone, :string
  end
end
