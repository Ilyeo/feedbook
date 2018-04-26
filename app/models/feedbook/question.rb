module Feedbook
  class Question < ApplicationRecord
    belongs_to :session
  end
end
