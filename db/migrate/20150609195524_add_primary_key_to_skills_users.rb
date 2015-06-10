class AddPrimaryKeyToSkillsUsers < ActiveRecord::Migration
  def change
    add_column :skills_users, :id, :primary_key
  end
end
