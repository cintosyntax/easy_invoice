# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_invoice/version'

Gem::Specification.new do |spec|
  spec.name          = "easy_invoice"
  spec.version       = EasyInvoice::VERSION
  spec.authors       = ["edwin"]
  spec.email         = ["cintosyntax@gmail.com"]

  spec.summary       = %q{InvoicedLite API Wrapper for Ruby}
  spec.homepage      = "https://github.com/cintosyntax/easy_invoice"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "excon", "~> 0.48.0"
  spec.add_dependency "json", "~> 1.8", ">= 1.8.3"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.8", ">= 5.8.4"

end
