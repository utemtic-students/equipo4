class User < ActiveRecord::Base
  has_many :order
  has_one :morralla
  has_one :log_print
  has_one :log_morralla

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         
end
