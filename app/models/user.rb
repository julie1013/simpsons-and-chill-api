class User < ActiveRecord::Base
  include Authentication
  has_one :playlist
end
