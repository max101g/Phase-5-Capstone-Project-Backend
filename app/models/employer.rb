class Employer < ApplicationRecord
    self.table_name = 'employers'
    self.primary_key = 'employer_code'
end
