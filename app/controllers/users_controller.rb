class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render_serializer user, UserSerializer
  end
end
