class Makeup < ActiveRecord::Base
	
  has_many :user_makeups
  has_many :users, through: :user_makeups
  belongs_to :true_shade, foreign_key: :true_shade_id
  has_many :reviews

  def makeup_name
    "#{brand} #{product} #{shade}"
  end

end
