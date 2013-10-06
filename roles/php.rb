name "php"
description "php"
run_list(
	"recipe[php]",
	"recipe[php::module_mysql]",
	"recipe[php::module_apc]",
	"recipe[php::module_curl]",
	"recipe[php::module_gd]",
	"recipe[php::module_memcache]"
)
