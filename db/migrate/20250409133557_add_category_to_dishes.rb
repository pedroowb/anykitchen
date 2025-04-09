class AddCategoryToDishes < ActiveRecord::Migration[7.1]
  def change
    add_reference :dishes, :category, null: false, foreign_key: true
  end
end
