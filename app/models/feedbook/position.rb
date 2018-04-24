module Feedbook
  class Position < ApplicationRecord
    validates :name, :job_description, presence: true
    belongs_to :department
    has_many :position_has_employee
    has_many :skill_has_positions
    has_many :skills, through: :skill_has_positions
  end
end
