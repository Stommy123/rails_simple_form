class Form < ApplicationRecord
  belongs_to :user
  has_many :form_products
  has_many :products, through: :form_products
  has_many :surgeon_contacts, inverse_of: :form, :dependent => :delete_all
  accepts_nested_attributes_for :surgeon_contacts
  has_many :dme_contacts, inverse_of: :form, :dependent => :delete_all
  accepts_nested_attributes_for :dme_contacts
  has_many :pt_contacts, inverse_of: :form, :dependent => :delete_all
  accepts_nested_attributes_for :pt_contacts
end
