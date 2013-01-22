class Talkie < ActiveRecord::Base
  attr_accessible :body
  belongs_to :user

  validates :body, length: { minimum: 10, maximum: 160 }
  validates_presence_of :user

  #after_save :send_message

  #def send_message
  #  do_something
  #end
  
end
