class ContractSerializer
  include FastJsonapi::ObjectSerializer
  attributes :course, :subject, :addr, :schedule, :time, :status, :paid, :tutor_id, :student_id
end
