class Offer < ActiveRecord::Base
  
  belongs_to :user
  has_many :subscriptions
  
end
