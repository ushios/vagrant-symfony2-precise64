name "default"
description "default"
run_list(
	"recipe[apt]",
	"recipe[git]",
	"role[memcached]",
	"role[vim]"
)
