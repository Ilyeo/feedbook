module Feedbook
  class Skill < ApplicationRecord
    belongs_to :department
    belongs_to :skill_group
    has_many :employee_has_skills
    has_many :employees, through: :employee_has_skills
    has_many :skill_has_positions
    has_many :positions, through: :skill_has_positions

    validates :name, presence: true
  end
end
