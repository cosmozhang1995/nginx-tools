export PATH=$NGINX_TOOLS_PATH:$PATH
source $NGINX_TOOLS_PATH/env.sh

list_available_sites() {
	local filelist="$(ls $NGINX_CONFIG_PATH/sites-available)"
	local cur=${COMP_WORDS[COMP_CWORD]}
	COMPREPLY=( $(compgen -W "$filelist" -- $cur) )
}
list_enabled_sites() {
	local filelist="$(ls $NGINX_CONFIG_PATH/sites-enabled)"
	local cur=${COMP_WORDS[COMP_CWORD]}
	COMPREPLY=( $(compgen -W "$filelist" -- $cur) )
}

complete -F list_available_sites ngensite
complete -F list_enabled_sites ngdissite


