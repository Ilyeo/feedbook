require 'rails_helper'

RSpec.describe Feedbook::Position, type: :model do
  it { should respond_to(:name) }
  it { should respond_to(:job_description) }
  it { should respond_to(:department) }
  it { should respond_to(:skill_has_positions) }
  it { should respond_to(:skills) }

  describe "association's model" do
    it { should belong_to(:department) }
    it { should have_many(:skill_has_positions) }
    it { should have_many(:skills).through(:skill_has_positions) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:job_description) }
  end

  it 'creates a position by factory method' do
    create(:position)
    expect(Feedbook::Position.last.name).to eq 'CEO'
  end
end
