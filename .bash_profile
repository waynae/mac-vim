export PATH=$PATH:/usr/local/Cellar/python@3.10/3.10.4/bin
alias python="/usr/local/Cellar/python@3.10/3.10.4/bin/python3.10"
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/workspace/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:${GOPATH//://bin:}/bin
export GO111MODULE=on
export GOPROXY=https://goproxy.cn

#export HISTTIMEFORMAT="%F %T `who -u am i 2>/dev/null| awk '{print $NF}'|sed \-e 's/[()]//g'` `whoami` "
#export HISTTIMEFORMAT="%F %T "
#shopt -s histappend
PROMPT_COMMAND='history -a'
HISTCONTROL=ignoredups:ignorespace
HISTIGNORE="pwd:ls:ls -alrt:history:clear:cl"
