json.extract! user, :id, :avatar, :name, :email, :password_digest, :location, :linkedin_url, :github_url, :other_site, :twitter, :slack_name, :created_at, :updated_at
json.url user_url(user, format: :json)
