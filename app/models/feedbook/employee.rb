module Feedbook
  class Employee < ApplicationRecord
    validates :email, presence: true
  end
end
