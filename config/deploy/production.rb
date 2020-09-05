# EC2サーバーのIP、EC2サーバーにログインするユーザー名、サーバーのロールを記述
server '54.250.88.3', :user => 'taka', :roles => %w[app db web]

# デプロイするサーバーにsshログインする鍵の情報を記述
set :ssh_options, :keys => '~/.ssh/fodmap.pem'
