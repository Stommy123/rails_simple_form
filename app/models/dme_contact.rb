class DmeContact < ApplicationRecord
  belongs_to :form, dependent: :destroy
end
