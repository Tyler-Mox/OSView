# Created 11/27/2022 by Brendan Gass with Devise
# File edited 11/30/2022 by Samuel Dominguez: added has_many associations for WaitTime and Review tables
# File edited 12/01/2022 by Samuel Dominguez: remove reference to WaitTime table
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :reviews
end
