class AdminSerializer < ActiveModel::Serializer
  attributes :id, :code, :full_name, :email
end
