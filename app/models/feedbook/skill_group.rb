module Feedbook
  class SkillGroup < ApplicationRecord
    validates :name, presence: true
  end
end
