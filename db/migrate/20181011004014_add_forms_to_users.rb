class AddFormsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :forms, :string
  end
end
