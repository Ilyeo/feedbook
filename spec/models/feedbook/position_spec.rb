require 'rails_helper'

module Feedbook
  RSpec.describe Position, type: :model do
    it { should  validate_presence_of(:name) }
    it { should  validate_presence_of(:job_description) }
    it { should belong_to(:department) }
  end
end
