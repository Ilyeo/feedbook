require 'rails_helper'

RSpec.describe Feedbook::Employee do
  it { should respond_to(:email) }
  it { should validate_presence_of(:email) }
  it { should respond_to(:ancestry) }
end
