require 'rails_helper'

RSpec.describe Feedbook::Skill, type: :model do
  it { should respond_to(:name) }
  it { should respond_to(:department) }
  it { should respond_to(:skill_group) }

  describe "association's model" do
    it { should belong_to(:department) }
    it { should belong_to(:skill_group) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end
