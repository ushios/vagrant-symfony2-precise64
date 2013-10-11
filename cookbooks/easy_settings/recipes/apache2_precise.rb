#
# Cookbook Name:: easy_settings
# Recipe:: apache2_precise
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/etc/apache2/sites-available/symfony2" do
	source "etc/apache2/sites-available/symfony2.erb"
	owner 'root'
	group 'root'
	mode 0644
	action :create
end

execute "ensite symfony2" do
	command "a2ensite symfony2"
	user 'root'
	action :run
end

service "apache2" do
	action :restart
end
