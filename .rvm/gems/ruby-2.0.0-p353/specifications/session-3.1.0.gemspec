# -*- encoding: utf-8 -*-
# stub: session 3.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "session"
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ara T. Howard"]
  s.date = "2010-05-20"
  s.description = "description: session kicks the ass"
  s.email = "ara.t.howard@gmail.com"
  s.homepage = "http://github.com/ahoward/session/tree/master"
  s.require_paths = ["lib"]
  s.rubyforge_project = "codeforpeople"
  s.rubygems_version = "2.1.11"
  s.summary = "session"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fattr>, [">= 0"])
    else
      s.add_dependency(%q<fattr>, [">= 0"])
    end
  else
    s.add_dependency(%q<fattr>, [">= 0"])
  end
end
