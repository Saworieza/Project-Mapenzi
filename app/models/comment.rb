class Comment < ActiveRecord::Base
  	belongs_to :post
  	belongs_to :user

  	cattr_accessor :current_user
end
