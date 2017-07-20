class RenameProjectsSkills < ActiveRecord::Migration[5.0]
  def change
    rename_table :projects_skills, :project_skills
  end
end
