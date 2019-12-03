class ApplicationController < ActionController::API
  def render_serializer(resource, serializer)
    render json: serializer.new(resource).serialized_json, status: 200
  end
end
