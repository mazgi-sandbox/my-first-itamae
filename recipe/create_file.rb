file "/etc/nginx/conf.d/foo.conf" do
  action :create # default
  content "foo"
end

file "/etc/nginx/conf.d/bar.conf" do
  action :create # default
  content "bar\n"
end

file "/etc/nginx/conf.d/date.conf" do
  action :create # default
  content "#{Time.now.to_s}\n"
end
