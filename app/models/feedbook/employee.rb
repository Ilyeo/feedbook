module Feedbook
  class Employee < ApplicationRecord
    has_ancestry
    has_many :employee_has_skills
    has_many :skills, through: :employee_has_skills
    validates :email, presence: true
    has_many :position_has_employees
  end
end
