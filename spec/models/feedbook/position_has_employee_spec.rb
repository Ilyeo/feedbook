require 'rails_helper'

RSpec.describe Feedbook::PositionHasEmployee, type: :model do
  it { should belong_to(:position) }
  it { should belong_to(:employee) }
  it 'creates a new record' do
    position = create(:position)
    employee = create(:employee)
    new_position_has_employee = Feedbook::PositionHasEmployee.create(position: position, employee: employee)
    expect(new_position_has_employee.persisted?).to be_truthy
  end

  it 'create a new record with factory' do
    new_position_has_employee = create(:position_has_employee)
    expect(new_position_has_employee.persisted?).to be_truthy
  end
end
