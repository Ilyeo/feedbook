module Feedbook
  class Position < ApplicationRecord
    validates :name, :job_description, presence: true
    belongs_to :department
    has_many :position_has_employee
  end
end
