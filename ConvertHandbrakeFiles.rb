#!/usr/bin/env ruby
require 'handbrake'

hb = HandBrake::CLI.new(:bin_path => handbrake_cli_path, :trace => true)

puts "Enter the Path for the movie."
movie = gets.chomp

E:\ruby>cd \movie

puts "Starting up Handbrake."

project = Handbrake::CLI.new.input('movies').verbose.
project.preset('720 fix').output('movies.m4v')



