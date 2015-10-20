class Pin < ActiveRecord::Base
validates :url, presence: true, uniqueness: true
validates :comment, presence: true


end
