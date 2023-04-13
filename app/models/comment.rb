class Comment < ApplicationRecord
    self.table_name = 'comments'
    self.primary_key = 'code'
end
