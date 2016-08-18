class Morralla < ActiveRecord::Base
  belongs_to :user

<<<<<<< HEAD
  def calculate_all_personal_resources
  #   num = Survey.count
  #   sum = Survey.sum(:personal_resources).to_f
  #   (sum/num).round(1)
   end
=======

  validates :mount, presence: true
>>>>>>> solution
end
