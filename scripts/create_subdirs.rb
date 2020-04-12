#!/usr/bin/env ruby

require 'fileutils'

dirs = %w(intro  installing-to-private-repo  architecture  config-file  vagrant  github-app  sandbox  lang  env-vars  pricing)

dirs.each do |dir|
  FileUtils.mkdir_p(dir)
  keep_filespec = File.join(dir, '.keep')
  puts "Creating #{keep_filespec}"
  FileUtils.touch(keep_filespec)
  `git add #{keep_filespec}`
end
