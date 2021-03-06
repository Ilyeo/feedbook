RSpec.describe Feedbook::Position, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:job_description) }
  it { should belong_to(:department) }
  it 'creates a position by factory method' do
    create(:position)
    expect(Feedbook::Position.last.name).to eq 'CEO'
  end
end
