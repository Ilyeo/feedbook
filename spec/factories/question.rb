FactoryBot.define do
  factory :question, class: Feedbook::Question do
    question 'Do you believe in love after love?'
    association :session, factory: :session

  end
end