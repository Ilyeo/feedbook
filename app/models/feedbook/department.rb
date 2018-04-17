module Feedbook
  class Department < ApplicationRecord
    validates :name, presence: true
  end
end
