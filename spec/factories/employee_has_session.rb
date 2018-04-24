FactoryBot.define do
  factory :employee_has_session, class: Feedbook::EmployeeHasSession do
    association :session, factory: :session
    association :manager, factory: :employee, email: 'victor.velazquez@magmalabs.io'
    association :employee, factory: :employee
  end
end