class AddCompanyToEmployee < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :company_id, :integer
    add_foreign_key :employees, :companies
  end
end
