class RemoveContactFromForms < ActiveRecord::Migration[5.2]
  def change
    remove_column :forms, :contact_id
  end
end
