Gem::Specification.new do |s|
  s.name        = 'meminfo'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = 'Obtain process memory information'
  s.description = 'Obtain process memory information'
  s.authors     = ['Loic Nageleisen']
  s.email       = 'loic.nageleisen@gmail.com'
  s.files       = ['lib/meminfo.rb', 'lib/meminfo/ext.rb']
  s.homepage    = 'https://github.com/lloeki/meminfo'

  s.add_development_dependency 'pry'
  s.add_development_dependency 'rubocop'
end
