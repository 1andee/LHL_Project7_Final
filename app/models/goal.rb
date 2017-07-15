class Goal < ApplicationRecord

  belongs_to :project
  has_many :comments
  has_one :completion_status

end
