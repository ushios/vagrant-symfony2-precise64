name "apache2"
description "apache2"
run_list(
	"recipe[apache2]",
	"recipe[apache2::mod_php5]",
	"recipe[apache2::mod_rewrite]"
)
