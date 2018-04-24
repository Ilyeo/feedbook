require 'rails_helper'

RSpec.describe Feedbook::Skill, type: :model do
  it { should respond_to(:name) }
  it { should respond_to(:department) }
  it { should respond_to(:skill_group) }
  it { should respond_to(:skill_has_positions) }
  it { should respond_to(:positions) }

  describe "association's model" do
    it { should belong_to(:department) }
    it { should belong_to(:skill_group) }
    it { should have_many(:employee_has_skills) }
    it { should have_many(:employees).through(:employee_has_skills) }
    it { should have_many(:skill_has_positions) }
    it { should have_many(:positions).through(:skill_has_positions) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end
