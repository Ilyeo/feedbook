module Feedbook
  class EmployeesSession < ApplicationRecord
    belongs_to :session
    belongs_to :manager, class_name: 'Employee'
    belongs_to :employee, class_name: 'Employee'
    has_many   :answers
  end
end
