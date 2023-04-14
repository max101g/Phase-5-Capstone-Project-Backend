class Admin < ApplicationRecord
    # declarations
    self.table_name = 'admins'
    self.primary_key = 'admin_code'
    # validations
    validates :full_name, presence: true
    validates :email, presence: true, uniqueness: true
    
    # relations
    has_one :user
end
