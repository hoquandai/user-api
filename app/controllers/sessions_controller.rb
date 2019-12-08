# frozen_string_literal: true

# :nodoc
class SessionsController < ApplicationController
  skip_before_action :authorize

  def new; end

  def create
    user = User.find_by(email: params[:email])
    if user.try(:authenticate, params[:password])
      user.update(token: BCrypt::Password.create(params[:email]))
      render json: { message: 'Logged in successfully', token: user.token }
    else
      render json: { message: 'Failed to login' }, status: :unauthorized
    end
  end

  def destroy
    user = User.find_by(token: params[:token])
    user.update(token: nil)
    render json: { message: 'Logged out successfully', status: :ok }
  end

  def index
    render json: { session: session }
  end
end
