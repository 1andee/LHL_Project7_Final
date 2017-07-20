class RenameSkillsUsers < ActiveRecord::Migration[5.0]
  def change
    rename_table :skills_users, :skill_users
  end
end
