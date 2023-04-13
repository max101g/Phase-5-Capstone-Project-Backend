class Employer < ApplicationRecord
    self.table_name = 'employers'
    self.primary_key = 'code'
end
