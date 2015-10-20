class Pin < ActiveRecord::Base
  validates :image, :comment, presence: true
end
