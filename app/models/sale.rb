class Sale < ApplicationRecord
  belongs_to :customer
  belongs_to :product
  belongs_to :employee
end
