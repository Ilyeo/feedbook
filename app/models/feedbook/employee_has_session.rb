module Feedbook
  class EmployeeHasSession < ApplicationRecord
    belongs_to :session
    belongs_to :manager, class_name: 'Employee'
    belongs_to :employee, class_name: 'Employee'
  end
end
