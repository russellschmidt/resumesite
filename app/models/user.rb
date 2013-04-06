class User < ActiveRecord::Base
  attr_accessible :email, :password, :username

  has_many :resumes

  #validate the data entry
  #make sure they entered an email, username and password
  validates :email, :password, :username, presence: true

  #make sure the email is a valid email
  validates :email, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  #make sure the username  & email are unique
  validates :email, :password, :username, uniqueness: true


  #make sure the password is between 5 and 50 chars
  #validates_length_of :password, in: 5..50

  #make sure the username is between 1 and 50 chars
  #validates_length_of :username, in: 1..50

  #make sure the email is more than 5 chars
  #validates_length_of :email, minimum: 6
  
end
