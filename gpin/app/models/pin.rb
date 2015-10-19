class Pin < ActiveRecord::Base
    validates :url, presence: true
    validates :image, presence: true
    validates :comment, presence: true
end
