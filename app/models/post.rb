class Post < ActiveRecord::Base
	#attr_accessor :body

	#validates :body, length: { maximum: 200 }
	acts_as_votable
	belongs_to :user
	has_many :comments

	cattr_accessor :current_user

	def score
		self.get_upvotes.size 
		self.get_downvotes.size
	end
end
