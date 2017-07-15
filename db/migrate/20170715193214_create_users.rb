class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :avatar
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :location
      t.string :linkedin_url
      t.string :github_url
      t.string :other_site
      t.string :twitter
      t.string :slack_name

      t.timestamps
    end
  end
end
