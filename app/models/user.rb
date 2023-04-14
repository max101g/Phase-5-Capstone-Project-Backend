class User < ApplicationRecord
    has_secure_password

    self.table_name = 'users'
    self.primary_key = 'user_code'

    # validations
    validates :role, presence: true
    validates :username, presence: true, uniqueness: true

    # relations
    belongs_to :admin
    belongs_to :employer
    belongs_to :seeker

    has_many :posts
    has_many :comments
end
