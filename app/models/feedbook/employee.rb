module Feedbook
  class Employee < ApplicationRecord
    has_ancestry
    validates :email, presence: true
    has_many :position_has_employees
  end
end
