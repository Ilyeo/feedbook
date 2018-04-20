require 'rails_helper'

RSpec.describe Feedbook::Department do
  it { should respond_to(:name) }
  it { should respond_to(:positions) }
  it { should respond_to(:skills) }
  it { should respond_to(:skill_groups) }

  describe "association's model" do
    it { should have_many(:positions) }
    it { should have_many(:skills) }
    it { should have_many(:skill_groups).through(:skills) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end
