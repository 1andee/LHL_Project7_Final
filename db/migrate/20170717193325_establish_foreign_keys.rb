class EstablishForeignKeys < ActiveRecord::Migration[5.0]

  def change
    remove_column :skills_users, :skill_id
    remove_column :projects_skills, :skill_id
    remove_column :skills_users, :user_id
    remove_column :projects_skills, :project_id
    remove_column :ratings, :project_id
    remove_column :feeds, :user_id
    remove_column :feeds, :project_id
    remove_column :comments, :user_id
    remove_column :comments, :project_id
    remove_column :comments, :goal_id
    remove_column :goals, :project_id
    remove_column :projects, :completion_status_id
    remove_column :goals, :completion_status_id

    add_reference :skills_users, :skill, foreign_key: true
    add_reference :projects_skills, :skill, foreign_key: true
    add_reference :skills_users, :user, foreign_key: true
    add_reference :projects_skills, :project, foreign_key: true
    add_reference :ratings, :project, foreign_key: true
    add_reference :feeds, :user, foreign_key: true
    add_reference :feeds, :project, foreign_key: true
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :project, foreign_key: true
    add_reference :comments, :goal, foreign_key: true
    add_reference :goals, :project, foreign_key: true
    add_reference :projects, :completion_status, foreign_key: true
    add_reference :goals, :completion_status, foreign_key: true

    change_table :projects do |t|
      t.remove :mentee_id
      t.remove :mentor_id

      t.references :mentee, references: :users
      t.references :mentor, references: :users
    end

    change_table :ratings do |t|
      t.remove :giver_id
      t.remove :receiver_id

      t.references :giver, references: :users
      t.references :receiver, references: :users
    end

  end

end
