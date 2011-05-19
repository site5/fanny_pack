$:.unshift 'lib'

require 'fanny_pack/version'

Gem::Specification.new do |s|
  s.name             = 'fanny_pack'
  s.version          = FannyPack::Version
  s.date             = Time.now.strftime('%Y-%m-%d')
  s.summary          = 'Ruby bindings for the Fantastico API'
  s.homepage         = 'https://github.com/site5/fanny_pack'
  s.authors          = ['Joshua Priddle']
  s.email            = 'jpriddle@site5.com'

  s.files            = %w[ Rakefile README.markdown ]
  s.files           += Dir['lib/**/*']
  s.files           += Dir['spec/**/*']

  s.add_runtime_dependency 'builder'

  s.add_development_dependency 'rspec',           '~> 2.6.0'
  s.add_development_dependency 'fakeweb',         '~> 1.3.0'
  s.add_development_dependency 'fakeweb-matcher', '~> 1.2.2'
  s.add_development_dependency 'awesome_print'

  if ! defined?(RUBY_ENGINE) || RUBY_ENGINE != 'rbx'
    s.add_development_dependency 'rcov',      '~> 0.9'
    s.add_development_dependency 'metric_fu', '~> 2.1'
  end

  s.extra_rdoc_files = ['README.markdown']
  s.rdoc_options     = ["--charset=UTF-8"]

  s.description = <<-DESC
    Ruby bindings for the Fantastico API
  DESC
end