# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fortune_teller/version'

Gem::Specification.new do |spec|
  spec.name          = "fortune_teller"
  spec.version       = FortuneTeller::VERSION
  spec.authors       = ["fatma yousef"]
  spec.email         = ["famyaltimimi@yahoo.com"]

  spec.summary       = %q{This gem returns your horoscope and what is your fortune every day.}
  spec.homepage      = "https://github.com/fatmaMY/fortune-teller"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "pry"
  spec.add_dependency "nokogiri"
end
