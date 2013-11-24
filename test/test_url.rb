require 'test/unit'
require 'lib/gravatar-api.rb'

class TestUrl < Test::Unit::TestCase
	def test_url
		profile = Gravatar.new("jessegrantherrick@gmail.com")
		expected = profile.url
		assert_equal(expected, "http://www.gravatar.com/avatar/9f3712c7a02579d7e50cb20d2680eb67")
	end

	def test_url_size
		profile = Gravatar.new("jessegrantherrick@gmail.com")
		expected = profile.url(:size => 150)
		assert_equal(expected, "http://www.gravatar.com/avatar/9f3712c7a02579d7e50cb20d2680eb67?s=150")
	end
end