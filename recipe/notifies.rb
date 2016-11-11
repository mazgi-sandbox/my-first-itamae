local_ruby_block 'foo' do
  action :nothing # required
  block do
    Itamae.logger.info 'Foo'
  end
end

service "nginx" do
  action :nothing
end

# not effect
Itamae.logger.info 'BEGIN:local_ruby_block'
local_ruby_block '' do
  block do
    Itamae.logger.info 'Bar'
  end
  notifies :reload, "service[nginx]"
  notifies :run, "local_ruby_block[foo]"
end
Itamae.logger.info 'END:local_ruby_block'

Itamae.logger.info 'BEGIN:template'
template "/etc/nginx/conf.d/app.conf" do
  source '../files/etc/nginx/conf.d/app.conf'
  notifies :reload, "service[nginx]"
  notifies :run, "local_ruby_block[foo]"
end
Itamae.logger.info 'END:template'
