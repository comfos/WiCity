class AddCallToPharms < ActiveRecord::Migration
  def change
    add_column :pharms, :call, :boolean

  end
end
