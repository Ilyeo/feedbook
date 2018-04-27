RSpec.describe Feedbook::Employee do
  it { should respond_to(:email) }
  it { should validate_presence_of(:email) }
  it { should respond_to(:ancestry) }

  describe "association's model" do
    it { should have_many(:employee_has_skills) }
    it { should have_many(:skills).through(:employee_has_skills) }
  end
end
