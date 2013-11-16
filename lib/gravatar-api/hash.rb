require 'digest/md5'

class Gravatar
	def self.hash!(email)
		email.downcase!
		hash = Digest::MD5.hexdigest(email)
		return hash
	end
end