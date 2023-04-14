class CommentSerializer < ActiveModel::Serializer
  attributes :comment_code, :content, :post_code, :user_code

  belongs_to :user
end
