require 'gravatar-api/version'
require 'gravatar-api/get'
require 'gravatar-api/hash'
require 'gravatar-api/open'

class Gravatar
	def initialize(email)
		@@email = email
	end 
end