# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wiki/version'

Gem::Specification.new do |spec|
  spec.name          = "wiki"
  spec.platform      = Gem::Platform::RUBY
  spec.version       = Wiki::VERSION
  spec.authors       = ["Ward Cunningham", "Daniel Stark"]
  spec.email         = ["ward@c2.com", "daniel@studiostark.com"]
  spec.summary   = %q{A Federated Wiki Server}
  spec.description       = %q{Wiki is a single-page application for browsing and editing content distributed throughout a federation of similar creative-commons licensed sites. What is a federated wiki, and why does federation matter? Authors throughout the federation pull content towards themselves as they edit. With this package authors publish their own edits back to the federation as they edit.}
  spec.homepage      = "http://fed.wiki.org"
  spec.licenses      = ['MIT', 'GPL-2']

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency 'sinatra'
  spec.add_runtime_dependency 'thin'
  spec.add_runtime_dependency 'png'
  spec.add_runtime_dependency 'openid'

end
