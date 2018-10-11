class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :primary
      t.string :phone
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :type

      t.timestamps
    end
  end
end
