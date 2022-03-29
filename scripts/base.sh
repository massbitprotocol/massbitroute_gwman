#!/bin/bash
SITE_ROOT=$(realpath $(dirname $(realpath $0))/..)

_git_config() {
	if [ ! -f "$HOME/.gitconfig" ]; then
		cat >$HOME/.gitconfig <<EOF
    [user]
	email = baysao@gmail.com
	name = Baysao
EOF
	fi

}
_update_sources() {
	_git_config
	is_reload=0
	branch=$MBR_ENV
	if [ -f "$SITE_ROOT/vars/GIT_MODULES" ]; then
		cat $SITE_ROOT/vars/GIT_MODULES | while read _path; do
			echo "git -C $_path pull origin $MBR_ENV"
			git branch --set-upstream-to origin/$branch
			git -C $_path pull origin $branch | grep -i "updating"
			if [ $? -eq 0 ]; then
				is_reload=1
			fi

		done
	fi
	return $is_reload
}
loop() {
	while true; do
		$0 $@
		sleep 3
	done

}
_timeout() {
	t=$1
	if [ -n "$t" ]; then
		shift
		timeout $t $0 $@
	else
		$0 $@
	fi
}
