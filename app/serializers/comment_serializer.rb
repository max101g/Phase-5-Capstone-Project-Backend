class CommentSerializer < ActiveModel::Serializer
  attributes :id, :code, :content, :post_code, :user_code
end
