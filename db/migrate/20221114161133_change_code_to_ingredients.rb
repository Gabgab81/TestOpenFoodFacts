class ChangeCodeToIngredients < ActiveRecord::Migration[7.0]
  def change
    change_column :ingredients, :code, :bigint
  end
end
