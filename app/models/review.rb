class Review < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id
  belongs_to :makeup, foreign_key: :makeup_id

  
end
