Gem::Specification.new do |s|
  s.name = %q{eycap}
  s.version = "0.3.4"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Engine Yard"]
  s.date = %q{2008-05-24}
  s.description = %q{A bunch of useful recipes to help deployment to Engine Yard slices}
  s.email = %q{tech@engineyard.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/capistrano/recipes/deploy/strategy/filtered_remote_cache.rb", "lib/eycap.rb", "lib/eycap/lib/ey_logger.rb", "lib/eycap/lib/ey_logger_hooks.rb", "lib/eycap/recipes.rb", "lib/eycap/recipes/backgroundrb.rb", "lib/eycap/recipes/database.rb", "lib/eycap/recipes/deploy.rb", "lib/eycap/recipes/ferret.rb", "lib/eycap/recipes/juggernaut.rb", "lib/eycap/lib/memcached.rb", "lib/eycap/recipes/memcached.rb", "lib/eycap/recipes/mongrel.rb", "lib/eycap/recipes/monit.rb", "lib/eycap/recipes/nginx.rb", "lib/eycap/recipes/slice.rb", "lib/eycap/recipes/solr.rb", "lib/eycap/recipes/sphinx.rb", "lib/eycap/recipes/templates/maintenance.rhtml", "lib/eycap/recipes/tomcat.rb", "test/test_eycap.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://eycap.rubyforge.org}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{eycap}
  s.rubygems_version = %q{1.0.1}
  s.summary = %q{Capistrano tasks for Engine Yard slices}
  s.test_files = ["test/test_eycap.rb", "test/test_helper.rb"]

  s.add_dependency(%q<capistrano>, [">= 2.2.0"])
  s.add_dependency(%q<hoe>, [">= 1.5.1"])
end
