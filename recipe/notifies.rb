local_ruby_block 'foo' do
  action :nothing # required
  block do
    Itamae.logger.info 'Foo!'
  end
end

service "nginx" do
  action :nothing
end

template "/etc/nginx/conf.d/app.conf" do
  source '../files/etc/nginx/conf.d/app.conf'
  notifies :reload, "service[nginx]"
  notifies :run, "local_ruby_block[foo]"
end
