require 'rails_helper'

RSpec.describe Feedbook::Question, type: :model do
  it { should belong_to(:session) }

  it 'creates a session object' do
    session = create(:session)
    Feedbook::Question.create(session: session, question: 'Do you believe in love after love?')
    expect(Feedbook::Question.last.session.session_type).to eq(session.session_type)
    expect(Feedbook::Question.last.question).to eq('Do you believe in love after love?')
  end

  it 'creates a session object from factory' do
    create(:question)
    expect(Feedbook::Question.last.question).to eq('Do you believe in love after love?')
  end
end
