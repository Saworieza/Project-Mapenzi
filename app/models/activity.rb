class Activity < ActiveRecord::Base
  belongs_to :user
  belongs_to :trackable, polymorphic: true
  attr_accessor :action, :trackable

  cattr_accessor :current_user
end
