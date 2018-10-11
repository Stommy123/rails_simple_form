class Form < ApplicationRecord
  belongs_to :user
  has_many :contacts
  has_many :form_products
  has_many :products, through: :form_products
end
