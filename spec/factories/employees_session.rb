FactoryBot.define do
  factory :employees_session, class: Feedbook::EmployeesSession do
    association :session, factory: :session
    association :manager, factory: :employee, email: 'victor.velazquez@magmalabs.io'
    association :employee, factory: :employee
  end
end