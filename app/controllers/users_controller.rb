class UsersController < ApplicationController
  skip_before_action :authorize, only: [:create, :new, :index, :tutors]
  def index
    users = User.all
    render_serializer users, UserSerializer
  end

  def show
    user = User.find(params[:id])
    render_serializer user, UserSerializer
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: { message: 'User was successfully created' }
    else
      render json: { message: 'Failed to create user' }, status: 400
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    if @user.save
      render json: { message: 'User was successfully updated' }
    else
      render json: { message: 'Failed to update user' }, status: 400
    end
  end

  def with_skill
    users = []
    skill = Skill.find_by(id: params[:skill_id])
    User.all.each do |user|
      users << user if user.skills.include?(skill)
    end
    render_serializer users, UserSerializer
  end

  def tutors
    users = User.where.not(skills: ["{}"])
    users = users.where.not(skills: [])
    render_serializer users, UserSerializer
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(
      :name, :password, :email, :dob, :gender, :phone, :city, :image_data_uri, skills: []
    )
  end
end
