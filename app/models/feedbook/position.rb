module Feedbook
  class Position < ApplicationRecord
    validates :name, :job_description, presence: true
    belongs_to :department
  end
end
