# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'puppet-lint/plugins/version'

Gem::Specification.new do |spec|
  spec.name          = "puppet-lint-check_unsafe_interpolations"
  spec.version       = CheckUnsafeInterpolations::VERSION
  spec.authors       = ['Puppet, Inc.']
  spec.files         = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*',
  ]
  spec.summary       = 'A puppet-lint plugin to check for unsafe interpolations.'
  spec.description   = <<-EOF
    A puppet-lint plugin to check for unsafe interpolations.
  EOF
  spec.homepage      = 'https://github.com/puppetlabs/puppet-lint-check_unsafe_interpolations'
  spec.license       = 'Apache-2.0'
  spec.required_ruby_version = Gem::Requirement.new(">= 3.1".freeze)

  spec.add_dependency 'puppet-lint', '~> 4.0'
end
