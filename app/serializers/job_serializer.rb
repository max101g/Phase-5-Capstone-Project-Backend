class JobSerializer < ActiveModel::Serializer
  attributes :job_code, :job_name, :employer_code, :jobtag_code
end
