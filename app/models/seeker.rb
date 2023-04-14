class Seeker < ApplicationRecord
    self.table_name = 'seekers'
    self.primary_key = 'seeker_code'

    # validations
    validates :full_name, presence: true
    validates :email, presence: true, uniqueness: true

    # relations
    has_one :user
end
