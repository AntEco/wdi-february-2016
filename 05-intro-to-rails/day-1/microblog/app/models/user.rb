class User < ActiveRecord::Base
  has_many :tweets

  def full_name
    fname + " " + lname
  end
end
