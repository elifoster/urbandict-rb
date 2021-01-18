Gem::Specification.new do |s|
  s.authors = ['Eli Foster']
  s.name = 'urbandict'
  s.summary = 'An interface to the Urban Dictionary API'
  s.version = '1.1.0'
  s.license = 'MIT'
  s.description = 'An interface to the Urban Dictionary API'
  s.email = 'elifosterwy@gmail.com'
  s.homepage = 'https://github.com/elifoster/urbandict-rb'
  s.metadata = {
    'issue_tracker' => 'https://github.com/elifoster/urbandict-rb/issues'
  }
  s.files = [
    'CHANGELOG.md',
    'lib/slang.rb',
    'lib/urbandict.rb'
  ]
  s.add_runtime_dependency('httpclient', '~> 2.8')
end 
