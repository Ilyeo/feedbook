FactoryBot.define do
  factory :position, class: Feedbook::Position do
    name 'CEO'
    job_description 'Rule them All'
    association :department, factory: :department
  end
end
