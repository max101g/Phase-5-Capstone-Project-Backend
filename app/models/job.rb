class Job < ApplicationRecord
    self.table_name = 'jobs'
    self.primary_key = 'job_code'

    belongs_to :employer
    belongs_to :jobtag
end
