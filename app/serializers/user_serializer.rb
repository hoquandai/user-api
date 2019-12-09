class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :dob, :gender, :phone, :city

  attributes :image do |user|
    user.image.url if user.image.present?
  end

  attributes :skills
end
