class Neighborhood < ActiveRecord::Base
	has_one :wall

	def authenticate(login_password)
		existing_password = BCrypt::Password.new(self.password_digest)
		if existing_password == login_password
			return true
		else
			return false
		end
	end
end