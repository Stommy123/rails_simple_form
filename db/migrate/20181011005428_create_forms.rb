class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.references :user, foreign_key: true
      t.references :contact, foreign_key: true
      t.string :region
      t.boolean :joint_replacement
      t.boolean :sports_medicine
      t.boolean :orthopedic_trauma
      t.boolean :spine
      t.string :other_conditions
      t.references :product, foreign_key: true
      t.boolean :substitutions
      t.string :signature
      t.datetime :date

      t.timestamps
    end
  end
end
