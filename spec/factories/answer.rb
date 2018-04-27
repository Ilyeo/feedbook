FactoryBot.define do
  factory :answer, class: Feedbook::Answer do
    answer 'Nope'
    association :question, factory: :question
    association :employees_session, factory: :employees_session
  end
end