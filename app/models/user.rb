require 'bcrypt'

class User < ApplicationRecord

	def create_user

		password = BCrypt::Password.create self.password_hash

		User.create(name: self.name, email: self.email, password_hash: password) 

	end

end
