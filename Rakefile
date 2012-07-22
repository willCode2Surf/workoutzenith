#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'colored'

Workoutzenith::Application.load_tasks

namespace :upgrade do
  def download_ember(repo_name, source = repo_name, target = source)
    FileUtils.rm_rf "tmp/#{repo_name}"
    `git clone https://github.com/emberjs/#{repo_name} tmp/#{repo_name}`
    Dir.chdir("tmp/#{repo_name}") do
      `bundle install`
      `bundle exec rake dist --trace`
    end
    FileUtils.copy "tmp/#{repo_name}/dist/#{source}", "app/vendor/#{target}"
    FileUtils.rm_rf "tmp/#{repo_name}"
  end

  task :ember do
    download_ember("ember.js")
  end

  task :data do
    download_ember("data", "ember-data.js")
  end

  task :all => [:ember, :data]
end
