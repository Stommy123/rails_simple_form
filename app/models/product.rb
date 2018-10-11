class Product < ApplicationRecord
  has_many :form_products
  has_many :forms, through: :form_products
end
