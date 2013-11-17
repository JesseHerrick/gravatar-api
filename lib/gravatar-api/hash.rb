require 'digest/md5'

class Gravatar
	# MD5 hash an email or string.
	def self.hash!(email)
		email.downcase!
		hash = Digest::MD5.hexdigest(email)
		return hash
	end
end