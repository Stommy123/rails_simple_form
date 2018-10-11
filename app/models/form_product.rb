class FormProduct < ApplicationRecord
  belongs_to :form
  belongs_to :product
end
