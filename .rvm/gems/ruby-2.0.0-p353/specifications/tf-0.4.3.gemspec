# -*- encoding: utf-8 -*-
# stub: tf 0.4.3 ruby lib

Gem::Specification.new do |s|
  s.name = "tf"
  s.version = "0.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michal Papis"]
  s.date = "2013-08-23"
  s.description = "Testing Framework solely based on plugins. For now only tests using Bash."
  s.email = "mpapis+tf@gmail.com"
  s.executables = ["tf"]
  s.files = ["bin/tf"]
  s.homepage = "http://github.com/mpapis/tf"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.11"
  s.summary = "Testing Framework"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<session>, ["~> 3.1"])
    else
      s.add_dependency(%q<session>, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<session>, ["~> 3.1"])
  end
end
