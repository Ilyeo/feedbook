module Feedbook
  class Skill < ApplicationRecord
    belongs_to :department
    belongs_to :skill_group

    validates :name, presence: true
  end
end
