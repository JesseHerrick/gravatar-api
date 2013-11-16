require 'gravatar-api/version'
require 'gravatar-api/get'
require 'gravatar-api/hash'
require 'gravatar-api/open'

class Gravatar
	attr_accessor :email
	def initialize(email)
		@@email = email
	end 
end