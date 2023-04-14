class Post < ApplicationRecord
    self.table_name = 'posts'
    self.primary_key = 'post_code'

    belongs_to :user
    has_many :comments
end
