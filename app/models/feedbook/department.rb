module Feedbook
  class Department < ApplicationRecord
    validates :name, presence: true
    has_many :positions, dependent: :destroy
  end
end
