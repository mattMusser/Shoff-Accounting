class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :lockable, :validatable,
         :timeoutable
end
