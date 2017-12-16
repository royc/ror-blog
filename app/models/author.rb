class Author < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first_or_create do |author|
       author.provider = auth.provider
       author.uid = auth.uid
       author.email = auth.info.email
       author.password = Devise.friendly_token[0,20]
     end
  end
end
