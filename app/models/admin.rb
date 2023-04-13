class Admin < ApplicationRecord
    self.table_name = 'admins'
    self.primary_key = 'code'
end
