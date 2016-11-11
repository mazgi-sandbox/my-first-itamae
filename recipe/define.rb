define :install_and_enable_package, version: nil do
  name = params[:name]
  version = params[:version]

  # error
  # ref: https://github.com/itamae-kitchen/itamae/issues/225
  #
  #package params[:name] do
  #  version params[:version] if params[:version]
  #  action :install
  #end

  #service params[:name] do
  #  action :enable
  #end

  package name do
    version version if version
    action :install
  end

  service name do
    action :enable
  end
end

install_and_enable_package 'nginx' do
  version '1.4.6-1ubuntu3.7'
end
