class Admin::User < ApplicationRecord
  ROLES = %i[admin copyrighter]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :trackable, :validatable
end
