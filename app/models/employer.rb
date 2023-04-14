class Employer < ApplicationRecord
    self.table_name = 'employers'
    self.primary_key = 'employer_code'

    # validations
    validates :company_name, presence: true
    validates :email, presence: true, uniqueness: true

    # relations
    has_one :user
end
