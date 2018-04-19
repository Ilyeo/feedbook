require 'rails_helper'

RSpec.describe Feedbook::Department do
  it { should respond_to(:name) }
  it { should validate_presence_of(:name) }
  it { should have_many(:positions) }
end
