class AdminSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :password
end
