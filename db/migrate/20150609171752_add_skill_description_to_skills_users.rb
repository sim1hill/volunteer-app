class AddSkillDescriptionToSkillsUsers < ActiveRecord::Migration
  def change
    add_column :skills_users, :skill_description, :string
  end
end
