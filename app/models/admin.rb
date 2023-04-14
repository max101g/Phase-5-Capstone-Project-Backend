class Admin < ApplicationRecord
    self.table_name = 'admins'
    self.primary_key = 'admin_code'
end
