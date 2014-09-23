class User < ActiveRecord::Base
	has_secure_password
	
	has_many :user_makeups
	has_many :makeups, through: :user_makeups
	has_many :reviews

  	belongs_to :true_shade
# , foreign_key: :true_shade
  # belongs_to :true_shade

	accepts_nested_attributes_for :user_makeups

end
