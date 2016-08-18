class Morralla < ActiveRecord::Base
  belongs_to :user


  validates :mount, presence: true
end
