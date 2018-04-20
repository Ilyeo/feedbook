module Feedbook
  class SkillGroup < ApplicationRecord
    validates :name, presence: true

    has_many :skills
    has_many :departments, through: :skills
  end
end
