module Feedbook
  class Answer < ApplicationRecord
    belongs_to :question
    belongs_to :employees_session
  end
end
