class Form < ApplicationRecord
  belongs_to :user
  has_many :contacts, inverse_of: :form
  has_many :form_products
  has_many :products, through: :form_products
  accepts_nested_attributes_for :contacts
end
