class UserMakeup < ActiveRecord::Base

  belongs_to :makeup
  belongs_to :user
  

  # accepts_nested_attributes_for :makeup, :user

end
 