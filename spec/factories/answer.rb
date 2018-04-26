FactoryBot.define do
  factory :answer, class: Feedbook::Answer do
    answer 'Nope'
    association :question, factory: :question
    association :employee_has_session, factory: :employee_has_session
  end
end