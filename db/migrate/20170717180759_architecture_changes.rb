class ArchitectureChanges < ActiveRecord::Migration[5.0]
  def change

    change_table :projects do |t|
      t.remove :mentee
      t.remove :mentor
      t.remove :status
      t.remove :pending

      t.integer :mentee
      t.integer :mentor
      t.integer :completion_status_id
      t.boolean :mentor_pending
      t.boolean :mentee_pending
    end

    change_table :skills do |t|
      t.remove :user_id
      t.remove :mentor
      t.remove :project_id
      t.remove :name

      t.string :skill_name
    end

    change_table :comments do |t|
      t.remove :project_id
      t.remove :user_id
      t.remove :goal_id

      t.integer :project_id
      t.integer :user_id
      t.integer :goal_id
    end

    change_table :goals do |t|
      t.remove :completion_status_id
      t.remove :project_id

      t.integer :project_id
      t.integer :completion_status_id
    end

    change_table :ratings do |t|
      t.remove :availability
      t.remove :accuracy
      t.remove :giver_id
      t.remove :receiver_id
      t.remove :project_id

      t.integer :availability
      t.integer :accuracy
      t.integer :giver_id
      t.integer :receiver_id
      t.integer :project_id
    end

    change_table :feeds do |t|
      t.remove :project_id
      t.remove :user_id

      t.integer :project_id
      t.integer :user_id
    end

    create_table :skills_users do |t|
      t.integer :skill_id
      t.integer :user_id
      t.boolean :mentor
    end

    create_table :projects_skills do |t|
      t.integer :skill_id
      t.integer :project_id
    end

  end
end
