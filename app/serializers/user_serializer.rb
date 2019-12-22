class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :dob, :gender, :phone, :city, :skills, :price, :desc

  attributes :image do |user|
    user.image.url if user.image.present?
  end
end
