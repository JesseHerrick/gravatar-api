class Gravatar
	# Get your Gravatar URL. Also a hash for size.
	def url(options = { :size => 80 })
		hash = Gravatar.hash!(@@email)
		if options[:size] == 80
			return "http://www.gravatar.com/avatar/#{hash}"
		else
			return "http://www.gravatar.com/avatar/#{hash}?s=#{options[:size]}"
		end
	end

	# Make a new method 'get' the same as the instance method 'url'.
	alias :get :url
end