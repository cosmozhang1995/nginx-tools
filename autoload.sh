export PATH=$NGINX_TOOLS_PATH:$PATH
source $NGINX_TOOLS_PATH/env.sh

list_available_sites() {
	COMPREPLY=( $(ls $NGINX_CONFIG_PATH/sites-available) )
}
list_enabled_sites() {
	COMPREPLY=( $(ls $NGINX_CONFIG_PATH/sites-enabled) )
}

complete -F list_available_sites ngensite
complete -F list_enabled_sites ngdissite


