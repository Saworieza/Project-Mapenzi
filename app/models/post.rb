class Post < ActiveRecord::Base
	#attr_accessor :body

	#validates :body, length: { maximum: 200 }
	acts_as_votable
	belongs_to :user
	has_many :comments
	has_many :votes, dependent: :destroy

	cattr_accessor :current_user

=begin method to vote with acts as votable
	def score
		self.get_upvotes.size 
		self.get_downvotes.size
	end
=end
end
