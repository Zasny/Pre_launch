#!/usr/bin/env puma

# start puma with:
# RAILS_ENV=production bundle exec puma -C ./config/puma.rb

application_path = '/var/www/pre_launch/current'
railsenv = 'production'
directory application_path
environment railsenv
daemonize true
pidfile "#{application_path}/tmp/pids/puma-#{railsenv}.pid"
state_path "#{application_path}/tmp/pids/puma-#{railsenv}.state"
stdout_redirect "#{application_path}/log/puma-#{railsenv}.stdout.log", "#{application_path}/log/puma-#{railsenv}.stderr.log"
threads 0, 16
bind "unix:///tmp/pre_launch.sock"