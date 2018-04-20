module Feedbook
  class Department < ApplicationRecord
    validates :name, presence: true
    has_many :positions, dependent: :destroy
    has_many :skills
    has_many :skill_groups, through: :skills
  end
end
