require 'rails_helper'

RSpec.describe Feedbook::SkillHasPosition, type: :model do
  it { should respond_to(:skill) }
  it { should respond_to(:position) }
  it { should respond_to(:skill_level) }

  describe "association's model" do
    it { should belong_to(:skill) }
    it { should belong_to(:position) }
  end
end
