class Company < ApplicationRecord

    has_many :sub_companies, class_name: "Company", foreign_key: "parent_id"
    belongs_to :parent, class_name: "Company", optional: true

end
