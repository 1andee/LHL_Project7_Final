class Comment < ApplicationRecord

  belongs_to :project
  belongs_to :comment
  belongs_to :user

end
