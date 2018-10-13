class CreateSurgeonContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :surgeon_contacts do |t|
      t.string :name
      t.string :primary
      t.string :phone
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.references :form, foreign_key: true

      t.timestamps
    end
  end
end
