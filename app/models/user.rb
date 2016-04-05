class User < ActiveRecord::Base
  devise :database_authenticatable, :oauthable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable,
        :confirmable, :lockable
end
