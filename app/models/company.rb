class Company < ApplicationRecord

    validates :name, presence: true

    has_many :sub_companies, class_name: "Company", foreign_key: "parent_id", dependent: :destroy
    belongs_to :parent, class_name: "Company", optional: true

    has_many :employees

    def all_sub_companies(subs = [])
        subs += sub_companies
        sub_companies.each do |company|
            return company.all_sub_companies(subs)
        end
        return subs
    end

    def employees_count
        employees.size
    end

    def total_employees_count
        all_sub_companies.inject(employees_count){|sum, company| sum + company.employees_count }
    end


end
