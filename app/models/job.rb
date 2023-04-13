class Job < ApplicationRecord
    self.table_name = 'jobs'
    self.primary_key = 'code'
end
