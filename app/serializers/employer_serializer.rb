class EmployerSerializer < ActiveModel::Serializer
  attributes :id, :code, :company_name, :email, :location, :avatar, :description, :verified
end
