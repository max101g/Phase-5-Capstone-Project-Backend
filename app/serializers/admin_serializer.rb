class AdminSerializer < ActiveModel::Serializer
  attributes :admin_code, :full_name, :email
end
