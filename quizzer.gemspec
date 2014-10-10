Gem::Specification.new do |s|
  s.name = "quizzer"
  s.summary = "Corrige exámenes"
  s.description = File.read(File.join(File.dirname(__FILE__), 'README.MD'))
  s.version = '0.0.1'
  s.author = 'Jorge Yagüe París'
  s.email = 'uo204121@uniovi.es'
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.9'
  s.files = Dir['**/**']
  s.executables = ['quizzer']
  s.test_files = Dir['test/*_spec.rb']
  s.has_rdoc = false
end