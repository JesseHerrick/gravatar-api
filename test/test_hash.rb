require 'test/unit'
require 'lib/gravatar-api'

class TestHash < Test::Unit::TestCase
	def test_hash
		profile = Gravatar.new("jessegrantherrick@gmail.com")
		expected = profile.hash!
		assert_equal(expected, "9f3712c7a02579d7e50cb20d2680eb67")
	end
end