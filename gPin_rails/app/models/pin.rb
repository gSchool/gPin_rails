class Pin < ActiveRecord::Base #activerecord is a class a base is method 
  validates_presence_of :comment
  validates_presence_of :url
end
