class User < ActiveRecord::Base
  has_many :order
<<<<<<< HEAD
  has_one :morralla
=======
  has_many :morralla
>>>>>>> solution
  has_one :log_print
  has_one :log_morralla

  has_many :archivos

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         
end
