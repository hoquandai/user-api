# frozen_string_literal: true

# :nodoc
class ApplicationController < ActionController::API
  before_action :authorize

  def render_serializer(resource, serializer)
    render json: serializer.new(resource).serialized_json, status: 200
  end

  protected

  def authorize
    if params[:token].present?
      unless User.find_by(token: params[:token])
        render json: { error: 'Please login', status: 400 }
      end
    else
      render json: { error: 'Please send token', status: 400 }
    end
  end
end
