class Queuing < ActiveRecord::Base
  belongs_to :playlist, inverse_of: :queuings
  belongs_to :episode, inverse_of: :queuings
end
