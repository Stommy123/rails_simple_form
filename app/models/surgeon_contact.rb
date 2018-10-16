class SurgeonContact < ApplicationRecord
  belongs_to :form, dependent: :destroy
  validates_format_of :phone, :with => /\d{3}-\d{3}-\d{4}/, :allow_blank => true
  validates_format_of :zip, :with => %r{\d{5}(-\d{4})?}, :allow_blank => true
end
