class ContractSerializer
  include FastJsonapi::ObjectSerializer
  attributes :course, :subject, :addr, :schedule, :time, :status, :paid, :tutor_id, :student_id, :created_at, :updated_at
  attributes :complaint
  attributes :price
end
