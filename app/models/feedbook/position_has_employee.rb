module Feedbook
  class PositionHasEmployee < ApplicationRecord
    belongs_to :position
    belongs_to :employee
  end
end
