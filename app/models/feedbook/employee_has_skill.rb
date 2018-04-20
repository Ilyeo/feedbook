module Feedbook
  class EmployeeHasSkill < ApplicationRecord
    belongs_to :employee
    belongs_to :skill
  end
end
