#
# Go language stuffs
#
if [[ -d /usr/local/go/bin ]]; then
	export PATH=/usr/local/go/bin:$PATH
fi

if [[ -f $HOME/.gopath ]]; then
	export GOPATH=$(eval echo $(cat $HOME/.gopath))
	export PATH="$GOPATH/bin:$PATH"
fi

# vim: set et ts=4 sw=4 sts=4 ft=sh:
