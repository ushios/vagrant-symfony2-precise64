$symfony2 = Proc.new{|conf|
	conf.vm.box = $boxes[:precise64]

	conf.vm.network :private_network, ip: "192.168.100.10"
	conf.vm.network :forwarded_port, guest:80, host:8080
	
	# share folder
	conf.vm.synced_folder(
		$share_folders[:symfony2],
		"/mnt/symfony2",
		:nfs => true
	) 
	
	conf.vm.provision :chef_solo do |chef|
		chef.cookbooks_path = $cookbooks_path
		chef.roles_path = $roles_path
		
		# add rolse (roles folder)		
		chef.add_role 'vim'
		
		# add recipes (cookbooks folder)
		chef.add_recipe 'vim'

		chef.json = {}
	end
}

