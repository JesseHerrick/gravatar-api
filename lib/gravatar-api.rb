require 'gravatar-api/version'
require 'gravatar-api/get'
require 'gravatar-api/hash'

class Gravatar
	def initialize(email)
		@@email = email
	end 
end