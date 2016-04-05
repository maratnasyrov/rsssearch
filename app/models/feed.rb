class Feed < ActiveRecord::Base
  has_many :news, dependent: :destroy
end
