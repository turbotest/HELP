#!/usr/bin/env ruby

require 'fileutils'

lines = File.readlines('SUMMARY.md').grep(/\(/)
filespecs = lines.map do |line|
  line.split('(').last.split(')').first
end

filespecs.each do |filespec|
  FileUtils.touch(filespec)
  `git add #{filespec}`
  puts "Added #{filespec}."
end

