class RemoveProductFromForms < ActiveRecord::Migration[5.2]
  def change
    remove_column :forms, :product_id
  end
end
