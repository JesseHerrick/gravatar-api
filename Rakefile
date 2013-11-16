#!/usr/bin/env ruby

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), *%w[lib]))

# Lib Files
require 'gravatar-api/version'

# Gems
require "rubygems"
require "rake"
require "colorize"

# Tasks
desc "Gem version"
task :version do
    puts "gravatar ".blue + "v".yellow + gravatar-api::VERSION.yellow
end

desc "Default task."
task :default do
    `rake version`
    puts "Gem seems to be in tip top shape!".green
    puts "Run: ".yellow + "`gravatar --help` to list all commands."
end

desc "Build gem."
task :build do
    puts "Starting gem build...".yellow
    puts "          Building...".yellow
    `gem build gravatar-api.gemspec`

    version = VERSION 
    puts "gravatar successfully built! ".green + "Gem ".blue + "v".yellow + version
    puts "Gems in this directory: ".yellow
    Dir.glob("*.gem").each { |gem| puts "=> ".blue + gem}
end
