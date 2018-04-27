FactoryBot.define do
  factory :session, class: Feedbook::Session do
    session_type '1-1'
    periodicity 4
    target 1
  end
end