module Feedbook
  class Answer < ApplicationRecord
    belongs_to :question
    belongs_to :employee_has_session
  end
end
