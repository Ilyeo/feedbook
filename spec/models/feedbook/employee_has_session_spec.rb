require 'rails_helper'

module Feedbook
  RSpec.describe EmployeeHasSession, type: :model do
    it 'creates a session' do
      session = create(:session)
      manager = create(:employee, email: 'jtapia@magmalabs.io')
      employee = create(:employee)
      employee_has_session = Feedbook::EmployeeHasSession.new(session: session, manager: manager, employee: employee)
      expect(employee_has_session.manager.email).to eq(manager.email)
    end

    it 'creates a session from factory' do
      create(:employee_has_session)
      expect(Feedbook::EmployeeHasSession.last.manager.email).to eq('victor.velazquez@magmalabs.io')
    end
  end
end
