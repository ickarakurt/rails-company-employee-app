class AddCompanyToEmployee < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :companies, foreign_key: true
  end
end
