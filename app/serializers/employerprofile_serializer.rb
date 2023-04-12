class EmployerprofileSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :email, :phone_number, :verified
end
