class Photo < ApplicationRecord

    has_many :comments
    has_many :fans, :through => :likes, :source => :user
    has_many :likes
    belongs_to :user
    
    validates(:user_id, {
      presence: true
    })
    
  
end
