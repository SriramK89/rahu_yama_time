# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rahu_yama_time/version'

Gem::Specification.new do |gem|
  gem.name          = "rahu_yama_time"
  gem.version       = RahuYamaTime::VERSION
  gem.authors       = ["SriramK89"]
  gem.email         = ["ksrirambecse@gmail.com"]
  gem.description   = %q{Get the Raahukaalam, Yamakantam and Gulikai for a given day or date}
  gem.summary       = %q{Pass the date(as String or DateTime object) or day(as String or FixNum object) for which you need the Raahukaalam, Yamakantam and Gulikai timings. For the whole timetable, pass the String 'week'.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
