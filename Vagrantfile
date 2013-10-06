# -*- mode: ruby -*-
# vi: set ft=ruby :

##
# chef settings
#
$cookbooks_path = "cookbooks"
$roles_path = "roles"

##
# import box settings
#
require './src/boxes.rb'

##
# import personal setting
#
require './settings/current.rb'

##
# import vm settings
#
require './servers/symfony2.rb'

Vagrant.configure("2") do |config|

	# symfony2 server
	config.vm.define(:symfony2, &$symfony2)
end
