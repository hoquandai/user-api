class SkillSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :desc
end
