# docker aliases
alias dps='docker ps'
alias dpsa='docker ps -a'
alias diip='docker inspect --format "{{ .NetworkSettings.IPAddress }}"'
alias dstats='docker stats $(docker inspect --format="{{ .Name }}" `docker ps -q`)'

function dex {
  if [ -z "$1" ]; then
    echo "Please supply a container name. Run 'dex container <command> <args>'"
    return
  fi
  CONTAINER=$1
  shift
  if [ -z "$1" ]; then
    PROGRAM=bash
  else
    PROGRAM=$1
    shift
  fi
  docker exec -t -i $CONTAINER $PROGRAM $@
}
dex=dex

