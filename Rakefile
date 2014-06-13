task :default => :tf
task :spec => :tf
task :test => :tf

desc "Run tf tests"
task :tf do
  exec 'tf --text test/**/*'
end

task :dummy do
end

FileList['**/*_comment_test.sh'].each do |test|
  file test => 'dummy' do
    exec "tf --text #{test}"
  end
end
