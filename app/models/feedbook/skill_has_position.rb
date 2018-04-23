module Feedbook
  class SkillHasPosition < ApplicationRecord
    belongs_to :skill
    belongs_to :position
  end
end
