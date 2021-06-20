require "test_helper"

class EmployeeTest < ActiveSupport::TestCase

  test 'employee with correct data should be valid' do
    employee = Employee.new
    employee.name = 'Employee X'
    employee.company = companies(:company_1)
    assert employee.valid?
  end

  test 'employee with null name should not be valid' do
    employee = Employee.new
    employee.company = companies(:company_1)
    employee.valid?
    assert_not employee.errors[:name].empty?
  end

  test 'employee with null company should not be valid' do
    employee = Employee.new
    employee.name = 'Employee X'
    employee.valid?
    assert_not employee.errors[:company].empty?
  end

end
