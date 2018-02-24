class User < ActiveRecord::Base
	include Bcrypt

  def password=(password_hash)
  	bybug
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password_hash)
    BCrypt::Password.new(self.password_digest) == password
  end
end


