class User < ActiveRecord::Base
	has_many :boards, dependent: :destroy
	has_many :pins, through: :boards, dependent: :destroy

	validates :username, :password, :email, presence: true
	validates :username, :email, uniqueness: true

	# location photo
end
