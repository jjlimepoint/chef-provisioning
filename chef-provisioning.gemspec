$:.unshift(File.dirname(__FILE__) + '/lib')
require 'chef/provisioning/version'

Gem::Specification.new do |s|
  s.name = 'chef-provisioning'
  s.version = Chef::Provisioning::VERSION
  s.summary = 'A library for creating machines and infrastructures idempotently in Chef.'
  s.description = s.summary
  s.author = 'John Keiser'
  s.email = 'jkeiser@chef.io'
  s.homepage = 'http://github.com/chef/chef-provisioning/README.md'
  s.license = "Apache-2.0"
  s.required_ruby_version = ">= 2.2.2"

  s.add_dependency 'net-ssh', '>= 2.9', '< 7.0'
  s.add_dependency 'net-scp', '> 1.0', '< 5.0'
  s.add_dependency 'net-ssh-gateway', '> 1.2', '< 4.0'
  s.add_dependency 'inifile', '>= 2.0.2'
  s.add_dependency 'winrm', '>= 2.0'
  s.add_dependency 'winrm-fs', '>= 1.3.3'
  s.add_dependency 'winrm-elevated', '>= 1.0'
  s.add_dependency "mixlib-install",  ">= 1.0"

  s.require_path = 'lib'
  s.files = %w(Gemfile Rakefile LICENSE) + Dir.glob("*.gemspec") +
      Dir.glob("{distro,lib,tasks,spec}/**/*", File::FNM_DOTMATCH).reject {|f| File.directory?(f) }
end
