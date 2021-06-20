require "test_helper"

class CompanyTest < ActiveSupport::TestCase

  test 'company with correct data should be valid' do
    company = Company.new
    company.name = 'Company X'
    assert company.valid?
  end

  test 'company with null name should not be valid' do
    company = Company.new
    company.valid?
    assert_not company.errors[:name].empty?
  end

  test 'all_sub_companies should return all sub companies' do
    company = companies(:company_1)
    assert_equal 2, company.all_sub_companies.size
  end

  test 'employees_count should return correct count' do
    company = companies(:company_1)
    assert_equal 1, company.employees_count
  end

  test 'total_employees_count should return correct count' do
    company = companies(:company_1)
    assert_equal 3, company.total_employees_count
  end

end
