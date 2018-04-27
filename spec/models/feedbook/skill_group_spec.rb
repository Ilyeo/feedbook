RSpec.describe Feedbook::SkillGroup do
  it { should respond_to(:name) }
  it { should respond_to(:skills) }
  it { should respond_to(:departments) }

  describe "association's model" do
    it { should have_many(:skills) }
    it { should have_many(:departments).through(:skills) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end
