class Gravatar
	def self.url(email, options = { :size => 80 })
		hash = Gravatar.hash!(email)
		return "http://www.gravatar.com/avatar/#{hash}/#{options[:size]}"
	end

	def url(email = @@email)
		hash = Gravatar.hash!(email)
		return "http://www.gravatar.com/avatar/#{hash}"
	end
	alias :get :url
end