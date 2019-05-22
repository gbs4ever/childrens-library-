class User < ApplicationRecord
    has_many :publishers
    has_many :books, through: :publishers
    has_many :checkouts
    has_many :checked_out_books, through: :checkouts, source: :book
    has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
        :omniauthable, :omniauth_providers => [:facebook]

#this method takes the data sent from the provider and 
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user| #sets/or creates a user in our db 
      user.email = auth.info.email
      #user.uid = auth.uid
      user.password = Devise.friendly_token[0,20]
      #user.name = auth.info.name   # assuming the user model has a name
      #user.image = auth.info.image # assuming the user model has an image
    end
  end

def username
 return  self.email.split("@")[0].capitalize
end


end
