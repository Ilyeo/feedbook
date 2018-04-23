require 'rails_helper'

module Feedbook
  RSpec.describe EmployeeHasSkill, type: :model do
    it { should respond_to(:version) }
    it { should respond_to(:date) }
    it { should respond_to(:employee) }
    it { should respond_to(:skill) }

    describe "association's model" do
      it { should belong_to(:employee) }
      it { should belong_to(:skill) }
    end
  end
end
