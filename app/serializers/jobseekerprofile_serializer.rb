class JobseekerprofileSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :phone_number, :availability, :minimum_salary, :job_categories, :verified
end
