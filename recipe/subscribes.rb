local_ruby_block 'foo' do
  action :nothing # required
  block do
    Itamae.logger.info 'Foo'
  end
  #subscribes :reload, "template[/etc/nginx/conf.d/app.conf]" # error
  subscribes :reload, "local_ruby_block[bar]" # not effect
end

service "nginx" do
  action :nothing
  subscribes :reload, "template[/etc/nginx/conf.d/app.conf]"
  subscribes :reload, "local_ruby_block[bar]" # not effect
end

# not effect
Itamae.logger.info 'BEGIN:local_ruby_block'
local_ruby_block 'bar' do
  block do
    Itamae.logger.info 'Bar'
  end
end
Itamae.logger.info 'END:local_ruby_block'

Itamae.logger.info 'BEGIN:template'
template "/etc/nginx/conf.d/app.conf" do
  source '../files/etc/nginx/conf.d/app.conf'
end
Itamae.logger.info 'END:template'
