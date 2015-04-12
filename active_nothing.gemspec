# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'active_nothing/version'

Gem::Specification.new do |spec|
  spec.name          = 'active_nothing'
  spec.version       = ActiveNothing::VERSION
  spec.authors       = ['Kamil Lelonek']
  spec.email         = ['squixy.sln@gmail.com']

  spec.summary       = %q{Ruby conditionals from Smalltalk}
  spec.description   = %q{A ruby gem inspired by a talk from Sandi Metz (https://youtu.be/9lv2lBq6x4A) and Yehuda Katz blogpost (http://yehudakatz.com/2009/10/04/emulating-smalltalks-conditionals-in-ruby/) for better conditions' flow.}
  spec.homepage      = 'https://github.com/KamilLelonek/active_nothing.git'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',    '~> 1.9'
  spec.add_development_dependency 'rake',       '~> 10.0'
  spec.add_development_dependency 'pry-byebug', '~> 3.1.0'
  spec.add_development_dependency 'rspec',      '~> 3.2.0'
end


