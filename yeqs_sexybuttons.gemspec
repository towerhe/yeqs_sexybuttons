require 'bundler'

Gem::Specification.new do |s|
  s.name = "yeqs_sexybuttons"
  s.version = File.exists?('VERSION') ? File.read('VERSION') : ""
  s.date = Date.today.to_s
  s.platform = Gem::Platform::RUBY
  s.author = "Tower He"
  s.email = "towerhe@gmail.com"
  s.homepage = "http://github.com/towerhe/yeqs_sexybuttons"
  s.summary = "Provide a flexible way to use sexybuttons."
  s.description = <<-DESC
  Yeqs Sexybuttons provide a flexible way to use sexybuttons(http://sexybuttons.googlecode.com).
  DESC

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = "yeqs_sexybuttons"

  s.add_bundler_dependencies

  s.files =  Dir.glob("{app,lib,public}/**/*") + %w(Gemfile MIT-LICENSE README.rdoc Rakefile VERSION yeqs_sexybuttons.gemspec)
end
