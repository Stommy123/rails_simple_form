class AddColumnToForms < ActiveRecord::Migration[5.2]
  def change
    add_column :forms, :non_surgical_orthopedic, :boolean
  end
end
