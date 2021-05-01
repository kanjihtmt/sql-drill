class Product < ApplicationRecord
  belongs_to :category
  has_many :sales
  has_many :customers, through: :sales
  has_many :employees, through: :sales
end
