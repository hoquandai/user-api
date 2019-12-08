class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :dob, :gender, :phone, :city

  attributes :image do |user|
    ENV['HOST'] + user.image.url if user.image.present?
  end
end
