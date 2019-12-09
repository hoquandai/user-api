class SkillsController < ApplicationController
  def index
    render_serializer Skill.all, SkillSerializer
  end

  def show
    render_serializer Skill.find_by(id: params[:id]), SkillSerializer
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      render json: { message: 'Skill was successfully created' }
    else
      render json: { message: 'Fail to create skill' }, status: 400
    end
  end

  protected

  def skill_params
    params.require(:skill).permit(:name, :desc)
  end
end
