def home_dir
    '/home/ec2-user/dowhatdeansaysortheservergetsit'
end

def path(p)
    File.join(home_dir, p)
end

directory home_dir
environment 'development'

pidfile path('tmp/pids/puma.pid')
state_path path('tmp/pids/puma.state')
stdout_redirect path('log/puma.log'), path('log/error.puma.log'), true
threads 0, 1
bind "unix:///home/ec2-user/dowhatdeansaysortheservergetsit/tmp/pids/puma.sock"
activate_control_app

