require 'rails_helper'

RSpec.describe Feedbook::Answer, type: :model do
  it { should belong_to(:question) }
  it { should belong_to(:employee_has_session) }

  it 'creates a new answer' do
    question = create(:question)
    employee_session = create(:employee_has_session)
    Feedbook::Answer.create(employee_has_session: employee_session, question: question, answer: 'Nope')
    expect(Feedbook::Answer.last.answer).to eq('Nope')
  end

  it 'creates a new answer from factory' do
    create(:answer)
    expect(Feedbook::Answer.last.answer).to eq('Nope')
  end
end
