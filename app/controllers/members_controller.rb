class MembersController < ApplicationController
  def index
  	@users = User.all.order('created_at DESC')
  end
end
