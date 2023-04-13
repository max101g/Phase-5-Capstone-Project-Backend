class PostSerializer < ActiveModel::Serializer
  attributes :id, :code, :title, :media, :description, :likes, :user_code
end
