class PtContact < ApplicationRecord
  belongs_to :form, dependent: :destroy
end