# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-cat-sweep"
  spec.version       = "0.1.4"
  spec.authors       = ["Civitaspo(takahiro.nakayama)", "Naotoshi Seo", "José M. Cabrera"]
  spec.email         = ["civitaspo@gmail.com", "sonots@gmail.com", "josele7@gmail.com"]

  spec.summary       = %q{Fluentd plugin to cat files and move them. Fork from original project by Civitaspo.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/civitaspo/fluent-plugin-cat-sweep"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "fluentd", ">= 0.10.45"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "test-unit"
  spec.add_development_dependency "test-unit-rr"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-nav"
end
