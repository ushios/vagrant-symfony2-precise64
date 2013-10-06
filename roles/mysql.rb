name "mysql"
description "mysql"
run_list(
	"recipe[openssl]",
	"recipe[mysql]",
	"recipe[mysql::server]"
)

default_attributes(
	"mysql"=> {
		"server_root_password"   => "",
		"server_repl_password"   => "",
		"server_debian_password" => ""
	}
)
