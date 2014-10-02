class AddPhoneToPharms < ActiveRecord::Migration
  def change
    add_column :pharms, :phone, :string
  end
end
