class Comment < ApplicationRecord
    self.table_name = 'comments'
    self.primary_key = 'comment_code'

    belongs_to :post
    belongs_to :user
end
