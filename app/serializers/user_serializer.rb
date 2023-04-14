class UserSerializer < ActiveModel::Serializer
  attributes :user_code, :username, :role
end
