class Post < ApplicationRecord
    self.table_name = 'posts'
    self.primary_key = 'code'
end
