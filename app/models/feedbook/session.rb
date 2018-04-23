module Feedbook
  class Session < ApplicationRecord
    validates :session_type, presence: true
  end
end
