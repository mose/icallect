require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs = ["lib"]
  t.test_files = FileList['spec/*_spec.rb']
end

task :ci_cleanup do
  require 'minitest/ci'
  MiniTest::Ci.clean
end

task :default => :test

namespace :cal do

  desc "add an ical feed"
  task :add, [:url] do |t,args|
    # todo
  end

  desc "list feeds"
  task :list do
    # todo
  end

  desc "run the icallect task"
  task :run, [:url] do |t,args|
    # todo
  end

end