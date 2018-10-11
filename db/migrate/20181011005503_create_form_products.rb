class CreateFormProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :form_products do |t|
      t.references :form, foreign_key: true
      t.references :product, foreign_key: true
      t.string :amount

      t.timestamps
    end
  end
end
