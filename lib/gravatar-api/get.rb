class Gravatar
	public
	def self.url(email, options = { :size => 80 })
		get_url(email)
	end

	def url(email = @@email)
		get_url(email)
	end
	alias :get :url

	private
	def get_url(email)
		hash = Gravatar.hash!(email)
		if options[:size] == 80
			return "http://www.gravatar.com/avatar/#{hash}"
		else
			return "http://www.gravatar.com/avatar/#{hash}/#{options[:size]}"
		end
	end
end