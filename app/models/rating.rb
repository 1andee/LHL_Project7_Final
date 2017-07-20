class Rating < ApplicationRecord

  belongs_to :project

  # adds association to alias of giver_id and receiver_id
  belongs_to :giver, :class_name => 'User'
  belongs_to :receiver, :class_name => 'User'

end
