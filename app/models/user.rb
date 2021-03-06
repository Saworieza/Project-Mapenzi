class User < ActiveRecord::Base

  has_attached_file :avatar, :styles => { :large => "350x350>", :medium => "200x200#", :thumb => "40x40>"}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :login

  def self.find_first_by_auth_conditions(warden_conditions)
  	conditions = warden_conditions.dup
  		if login = conditions.delete(:login)
    		where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  		else
    		if conditions[:username].nil?
      			where(conditions).first
    		else
      			where(username: conditions[:username]).first
    		end
  		end
	end

  has_many :posts
  has_many :comments
  has_many :activities

end
