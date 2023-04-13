class JobSerializer < ActiveModel::Serializer
  attributes :id, :code, :job_name, :employer_code, :jobtag_code
end
