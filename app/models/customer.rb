class Customer < ApplicationRecord
  belongs_to :customer_class
  belongs_to :prefecture
  has_many :sales
  has_many :products, through: :sales
  has_many :employees, through: :sales
end
