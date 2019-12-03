class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :dob, :gender, :phone, :city
end
