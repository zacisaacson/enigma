require 'rake/testtask'

Rake::TestTask.new do |test|
  test.test_files = FileList['test/*_test.rb']
end
desc "Run tests"

task default: :test
