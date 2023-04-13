class SeekerSerializer < ActiveModel::Serializer
  attributes :id, :code, :full_name, :email, :location, :gender, :date_of_birth, :avatar, :phone_number, :preferred_job, :availability, :minimum_salary, :verified
end
