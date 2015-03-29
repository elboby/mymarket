class Region < ActiveRecord::Base
  has_many :providers
  validates :title, presence: true,
                    length: { minimum: 5 }
end
