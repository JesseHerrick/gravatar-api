gravatar-api
============

A library for easy, object oriented Gravatar API access.

# Using the Gem
gravatar-api was designed to use the Gravatar API properly for easy use in web applications (and whatever else you want!). 

Examples: 
```ruby
require 'gravatar-api'

profile = Gravatar.new("jessegrantherrick@gmail.com")
# Return the avatar URL with default size (80px)
profile.url
 # => "http://www.gravatar.com/avatar/9f3712c7a02579d7e50cb20d2680eb67"

# Return the avatar URL with a different size (150px)
profile.url(:size => 150)
 # => "http://www.gravatar.com/avatar/9f3712c7a02579d7e50cb20d2680eb67?s=150"

# Return a hash of your given email (as of v0.1.3)
profile.hash!
 # => "9f3712c7a02579d7e50cb20d2680eb67"
```

The hash!(email) method also works as a class method.
```ruby
require 'gravatar-api'

Gravatar.hash!("jessegrantherrick@gmail.com")
# => "9f3712c7a02579d7e50cb20d2680eb67"
```
