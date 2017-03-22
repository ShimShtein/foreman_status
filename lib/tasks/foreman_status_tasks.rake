require 'rake/testtask'

# Tasks
namespace :foreman_status do
  namespace :example do
    desc 'Example Task'
    task task: :environment do
      # Task goes here
    end
  end
end

# Tests
namespace :test do
  desc 'Test ForemanStatus'
  Rake::TestTask.new(:foreman_status) do |t|
    test_dir = File.join(File.dirname(__FILE__), '../..', 'test')
    t.libs << ['test', test_dir]
    t.pattern = "#{test_dir}/**/*_test.rb"
    t.verbose = true
    t.warning = false
  end
end

namespace :foreman_status do
  task :rubocop do
    begin
      require 'rubocop/rake_task'
      RuboCop::RakeTask.new(:rubocop_foreman_status) do |task|
        task.patterns = ["#{ForemanStatus::Engine.root}/app/**/*.rb",
                         "#{ForemanStatus::Engine.root}/lib/**/*.rb",
                         "#{ForemanStatus::Engine.root}/test/**/*.rb"]
      end
    rescue
      puts 'Rubocop not loaded.'
    end

    Rake::Task['rubocop_foreman_status'].invoke
  end
end

Rake::Task[:test].enhance ['test:foreman_status']

load 'tasks/jenkins.rake'
if Rake::Task.task_defined?(:'jenkins:unit')
  Rake::Task['jenkins:unit'].enhance ['test:foreman_status', 'foreman_status:rubocop']
end
