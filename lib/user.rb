class User
	attr_accessor :email, :age
	@@all_users = []

	def initialize(email_to_save,age_to_save)
		@email = email_to_save
		@age = age_to_save

		@@all_users << self
	end

	def self.all
		puts @@all_users
	end
end