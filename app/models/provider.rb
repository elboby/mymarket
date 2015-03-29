class Provider < ActiveRecord::Base
  belongs_to :region
  has_many :products
end
