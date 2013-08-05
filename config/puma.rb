dir = File.join File.dirname(__FILE__), '..'
threads 4,4
bind  "tcp://0.0.0.0:8080"
pidfile "/#{root}/tmp/puma/pid"
state_path "/#{root}/tmp/puma/state"
