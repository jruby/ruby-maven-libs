# -*- encoding: utf-8 -*-

require './lib/maven'

Gem::Specification.new do |s|
  s.name = "ruby-maven-libs"
  s.version = Maven::VERSION

  s.require_paths = ["lib"]
  s.authors = ["Christian Meier"]
  s.description = "maven distribution as gem - no ruby executables !"
  s.email = ["m.kristian@web.de"]
  s.extra_rdoc_files = ["maven-home/README.txt", "maven-home/NOTICE", "maven-home/LICENSE", "README.md"]
  s.files = ["README.md"] + Dir['maven-home/**/*'] + ["lib/maven.rb"]
  s.homepage = "https://github.com/jruby/ruby-maven-libs"
  s.licenses = ["Apache-2.0"]
  s.summary = "maven distribution as gem"
end

