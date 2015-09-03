 class User < ActiveRecord::Base
	has_many :men, dependent: :destroy
	has_many :women, dependent: :destroy

	has_secure_password 
end
