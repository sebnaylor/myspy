class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :agent, dependent: destroy
end
