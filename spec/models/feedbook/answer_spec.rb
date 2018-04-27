RSpec.describe Feedbook::Answer, type: :model do
  it { should belong_to(:question) }
  it { should belong_to(:employees_session) }

  it 'creates a new answer' do
    question = create(:question)
    employee_session = create(:employees_session)
    Feedbook::Answer.create(employees_session: employee_session, question: question, answer: 'Nope')
    expect(Feedbook::Answer.last.answer).to eq('Nope')
  end

  it 'creates a new answer from factory' do
    create(:answer)
    expect(Feedbook::Answer.last.answer).to eq('Nope')
  end
end
