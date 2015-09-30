desc 'Install the dependencies'
task :bootstrap do
  sh 'git submodule update --init'
  sh 'bundle install'
end

begin
  require 'rubygems'
  require 'bundler/setup'

  task :env do
    $LOAD_PATH.unshift(File.expand_path('../', __FILE__))
    require 'config/init'
  end

  task :rack_env do
    ENV['RACK_ENV'] ||= 'development'
  end

  desc 'Starts processes for local development'
  task :serve do
    exec 'env PORT=4567 RACK_ENV=development foreman start'
  end

  desc 'Run the specs'
  task :spec do
    title 'Running the specs'
    sh "bacon #{FileList['spec/**/*_spec.rb'].shuffle.join(' ')}"
  end
