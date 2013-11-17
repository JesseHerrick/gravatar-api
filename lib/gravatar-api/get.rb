class Gravatar
	public
	# A class method to get your Gravatar URL.
		# A hash of options for size as well.
	def self.url(email, options = { :size => 80 })
		get_url(email)
	end

	# Same as above but as an instance method.
	def url(email = @@email, options = { :size => 80 })
		get_url(email)
	end
	# Make a new method 'get' the same as the instance method 'url'.
	alias :get :url

	private
	# A private class to save lines of code.
	def get_url(email)
		hash = Gravatar.hash!(email)
		if options[:size] == 80
			return "http://www.gravatar.com/avatar/#{hash}"
		else
			return "http://www.gravatar.com/avatar/#{hash}/#{options[:size]}"
		end
	end
end