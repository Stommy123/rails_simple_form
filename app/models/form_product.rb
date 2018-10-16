class FormProduct < ApplicationRecord
  belongs_to :form
  belongs_to :product
  accepts_nested_attributes_for :product
end
