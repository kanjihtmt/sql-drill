class Employee < ApplicationRecord
  has_many :department_employees
  has_many :departments, through: :department_employees
  has_many :salaries
  has_many :sales
  has_many :products, through: :sales
  has_many :customers, through: :sales
end
