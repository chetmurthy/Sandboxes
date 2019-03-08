. ~/.bash_aliases
pushp $THRIFTROOT/bin
pushvar PYTHONPATH $THRIFTROOT/lib/python2.7/site-packages
pushvar PKG_CONFIG_PATH $THRIFTROOT/lib/pkgconfig

# Kill all running containers.
alias dockerkillall='docker kill $(docker ps -q)'

# Delete all stopped containers.
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'

# Delete all untagged images.
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'

# Delete all stopped containers and untagged images.
alias dockerclean='dockercleanc || true && dockercleani'

# Build a thrift docker image (run from top level of git repo): argument #1 is image type (ubuntu, centos, etc).
function dockerbuild
{
  docker build -t $1 build/docker/$1
}

# Run a thrift docker image: argument #1 is image type (ubuntu, centos, etc).
function dockerrun
{
  docker run -v $(pwd):/thrift/src -it $1 /bin/bash
}

export DISTRO=ubuntu-xenial
export DOCKER_REPO=thrift/thrift-build
unset DOCKER_USER
unset DOCKER_PASS
#export DOCKER_USER="<none>"
#export DOCKER_PASS="<none>"
