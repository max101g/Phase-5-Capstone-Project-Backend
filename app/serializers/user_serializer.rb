class UserSerializer < ActiveModel::Serializer
  attributes :id, :code, :username, :password_digest, :role
end
