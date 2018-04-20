FactoryBot.define do
  factory :position_has_employee, class: Feedbook::PositionHasEmployee do
    association :position, factory: :position
    association :employee, factory: :employee
  end
end