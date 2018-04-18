module Feedbook
  class Employee < ApplicationRecord
    has_ancestry
    validates :email, presence: true
  end
end
