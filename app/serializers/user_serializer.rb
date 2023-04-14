class UserSerializer < ActiveModel::Serializer
  attributes :user_code, :username, :role, :profile_id
end
