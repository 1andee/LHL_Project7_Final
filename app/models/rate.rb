class Rate < ActiveRecord::Base
  belongs_to :rater, :class_name => "User"
  belongs_to :rateable, :polymorphic => true

  #attr_accessible :rate, :dimension

  #   # adds association to alias of giver_id and receiver_id
  # belongs_to :giver, :class_name => 'User'
  # belongs_to :receiver, :class_name => 'User'

end