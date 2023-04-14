class PostSerializer < ActiveModel::Serializer
  attributes :post_code, :title, :media, :description, :likes, :user_code
end
