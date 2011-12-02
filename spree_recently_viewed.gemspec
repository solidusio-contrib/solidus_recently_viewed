Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_recently_viewed'
  s.version     = '1.1'
  s.summary     = 'Adds recently viewed products to Spree'
  s.authors     = ['Roman Smirnov', 'Brian Quinn']
  s.email       = 'brian@railsdog.com'
  s.required_ruby_version = '>= 1.8.7'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 1.0.0.beta')
end
