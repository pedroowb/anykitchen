class AddSpecialToDishes < ActiveRecord::Migration[7.1]
  def change
    add_column :dishes, :special, :boolean, default: false
  end
end
