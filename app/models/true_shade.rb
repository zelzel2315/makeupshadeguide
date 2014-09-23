class TrueShade < ActiveRecord::Base
  has_many :users
  has_many :makeups
end
