#!/usr/bin/env ruby

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), *%w[lib]))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), *%w[test]))

# Created by Jesse Herrick
# www.jessegrant.net
# jessegrantherrick@gmail.com

# Lib Files
require 'gravatar-api/version'

# Gems
require "rubygems"
require "rake"
require "colorize"

# Helpers
def test(filename)
    puts `ruby -I . test/test_#{filename}.rb`
end

# Tasks
desc "Gem version"
task :version do
    puts "gravatar-api " + "v#{VERSION}".yellow
end

desc "Default task."
task :default do
    puts `rake test`
    puts `rake version`
    puts "Gem seems to be in tip top shape!".green
    puts "Run: ".yellow + "`gravatar --help` to list all commands."
end

desc "Run all tests."
task :test do
    test("hash")
    test("url")
end

desc "Build gem."
task :build do
    puts "Starting gem build...".yellow
    puts "          Building...".yellow
    `gem build gravatar-api.gemspec`

    version = VERSION 
    puts "gravatar successfully built! ".green + "Gem ".red + "v".yellow + version
    puts "Gems in this directory: ".yellow
    Dir.glob("*.gem").each { |gem| puts "=> " + gem.yellow }
end

desc "Install the gem."
task :install do
    gem = Dir.glob("*.gem")[-1]
    puts "Installing gem...".yellow
    puts "From: ".yellow + 
    `sudo gem install #{gem}`
    puts "Gem successfully installed!".green
end