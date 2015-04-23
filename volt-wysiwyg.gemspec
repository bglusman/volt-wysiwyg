# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

version = File.read(File.expand_path('../VERSION', __FILE__)).strip


Gem::Specification.new do |spec|
  spec.name          = "volt-wysiwyg"
  spec.version       = version
  spec.authors       = ["Brian Glusman", "Bobby Grayson"]
  spec.email         = ["brian@glusman.me", "bobbygrayson@gmail.com"]
  spec.summary       = %q{A Quill.js Component for Volt.}
  spec.description   = %q{See Summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "volt", "~> 0.9.0"
  spec.add_development_dependency "rake"
end
