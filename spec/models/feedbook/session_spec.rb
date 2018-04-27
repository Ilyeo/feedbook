RSpec.describe Feedbook::Session, type: :model do
  it { should validate_presence_of(:session_type) }
  it 'creates model from factory' do
    session = create(:session)
    expect(session.session_type).to eq '1-1'
  end
end
