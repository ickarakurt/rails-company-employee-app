class Employee < ApplicationRecord

    validates :name, presence: true
    validates :company_id, presence: true
    belongs_to :company

end
