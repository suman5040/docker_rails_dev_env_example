

server 'localhost',
  user: 'vagrant', 
  keys: %w(/Users/ben/.vagrant.d/insecure_private_key),
  roles: %w{web app docker}, 
  docker: {
    image: 'talkingquickly/rails',
    dockerfile: "/",
    always_refresh: true,
    name: 'rails1',
    links: [],
    volumes: '',
    envs: [],
    ports: ["3001:3000"]
    },
  port: 2222


# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }