class Seeker < ApplicationRecord
    self.table_name = 'seekers'
    self.primary_key = 'code'
end
