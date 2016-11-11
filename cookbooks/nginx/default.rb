package 'nginx'

template '/etc/nginx/conf.d/app.conf' do
  source '../../files/etc/nginx/conf.d/app.conf'
end
