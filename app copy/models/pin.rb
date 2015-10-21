class Pin < ActiveRecord::Base
	belongs_to :board
	
	validates :url, :photo, :board_id, presence: true
end
#url photo user_id board_id comment