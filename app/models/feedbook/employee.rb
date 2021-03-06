module Feedbook
  class Employee < ApplicationRecord
    has_ancestry

    has_many :employee_has_skills
    has_many :skills, through: :employee_has_skills
    has_many :position_has_employees
    has_many :employees_sessions

    validates :email, presence: true
  end
end
