task :default => :tf
task :spec => :tf
task :test => :tf

desc "Run tf tests"
task :tf do
  exec 'tf --text test/*'
end
