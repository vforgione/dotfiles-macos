export ZSH=/Users/vince/.oh-my-zsh

ZSH_THEME="agnoster"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"

export GOPATH="$HOME/Workspace/golang"

if [ "$(which vim)" ]; then export EDITOR=`which vim`; fi

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

docker_running=`docker-machine ls | grep tcp`
update-docker-hosts(){
	# clear existing *.docker.local entries from /etc/hosts
	sudo sed -i '' '/\.docker\.local$/d' /etc/hosts

	# iterate over each machine
	docker-machine ls | tail -n +2 | awk '{print $1}' \
	| while read -r MACHINE; do
		MACHINE_IP="$(docker-machine ip ${MACHINE} 2>/dev/null)"
		[[ -n $MACHINE_IP ]] && sudo /bin/bash -c "echo \"${MACHINE_IP}	${MACHINE}.docker.local\" >> /etc/hosts"
		export no_proxy=$no_proxy,$MACHINE_IP
	done
}
if [ "$docker_running" ]; then 
	eval "$(docker-machine env default)";
fi

if [ -f ~/.work ] ; then source ~/.work ; fi
