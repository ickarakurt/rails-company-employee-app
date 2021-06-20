class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :company_id, :null => true, :references => [:companies]
      t.timestamps
    end
  end
end
