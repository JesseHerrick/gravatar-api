class Gravatar
	def self.get(email)
		hash = Gravatar.hash!(email)
		return "http://www.gravatar.com/avatar/#{hash}"
	end

	def get(email = @@email)
		hash = Gravatar.hash!(email)
		return "http://www.gravatar.com/avatar/#{hash}"
	end
	alias :url :get
end