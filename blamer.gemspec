# frozen_string_literal: true

require_relative 'lib/blamer/version'

Gem::Specification.new do |spec|
  spec.name = 'blamer'
  spec.version = Blamer::VERSION
  spec.authors = ['Ivan Ivanchuk']
  spec.email = ['l3r8y@duck.com']
  spec.summary = 'Telegram bot for notifications'
  spec.description = 'Just redirect your notifications from GitHub to your telegram'
  spec.homepage = 'https://www.l3r8y.ru/blamer'
  spec.license = 'MIT'
  spec.extra_rdoc_files = ['README.md', 'LICENSE.txt']
  spec.required_ruby_version = '>= 2.6.0'
  spec.metadata['allowed_push_host'] = 'https://www.l3r8y.ru/blamer'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/l3r8yJ/blamer'
  spec.metadata['changelog_uri'] = 'https://github.com/l3r8yJ/blamer/releases'
  spec.add_runtime_dependency 'iri', '~>0.5'
  spec.add_runtime_dependency 'octokit', '~>4.0'
  spec.add_development_dependency 'codecov', '0.6.0'
  spec.add_development_dependency 'cucumber', '8.0.0'
  spec.add_development_dependency 'minitest', '5.15.0'
  spec.add_development_dependency 'rake', '13.0.6'
  spec.add_development_dependency 'rdoc', '6.4.0'
  spec.add_development_dependency 'rubocop', '1.32.0'
  spec.add_development_dependency 'rubocop-rspec', '2.11.1'
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency 'example-gem', '~> 1.0'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
