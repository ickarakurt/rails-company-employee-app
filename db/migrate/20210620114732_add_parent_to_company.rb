class AddParentToCompany < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :parent_id, :integer, index: true
    add_foreign_key :companies, :companies, column: :parent_id
  end
end
