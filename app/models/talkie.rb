class Talkie < ActiveRecord::Base
  attr_accessible :body

  validates :body, length: { minimum: 10, maximum: 160 }
  
end
