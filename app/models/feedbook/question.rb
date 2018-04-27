module Feedbook
  class Question < ApplicationRecord
    belongs_to :session
    has_many   :answers
  end
end
