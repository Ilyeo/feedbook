module Feedbook
  class Session < ApplicationRecord
    has_many :employee_has_sessions

    validates :session_type, presence: true
  end
end
