# Explicitly configured $PATH variable
#PATH=/usr/local/git/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/local/bin:/opt/local/sbin:/usr/X11/bin
#export PATH="./bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$HOME/bin:/usr/local/share/npm/bin:$PATH:."
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

#
# CloudFoundry and BOSH env variables
#
export BOSH_RELEASES_DIR=~/workspace
export CF_RELEASE_DIR=$HOME/workspace/cf-release
# This is the HA Proxy ip in bosh vms (not the cc)
export VCAP_BVT_API_ENDPOINT=http://api.10.244.0.34.xip.io
export VCAP_BVT_ADMIN_USER=admin
export VCAP_BVT_ADMIN_USER_PASSWD=admin
# Cloudfoundry target which is prefixed with uaa. when tests (uaa or yeti) are run
#export VCAP_BVT_TARGET=10.244.0.34.xip.io
# max wait time for buildpack staging, in minutes
export CF_STAGING_TIMEOUT=50
# max wait time for app instance startup, in minutes
export CF_STARTUP_TIMEOUT=5
# print API request diagnostics to stdout
export CF_TRACE=false
#CF_TRACE=path/to/trace.log - append API request diagnostics to a log file
#HTTP_PROXY=http://proxy.example.com:8080 - enable http proxying for API requests


export EDITOR='subl -w'
#export EDITOR="/usr/local/bin/mate -w"

#
# see http://blog.macromates.com/2011/mate-and-rmate/
#
#export GIT_EDITOR="mate --name 'Git Commit Message' -w -l 1"
export GIT_EDITOR="vim"

# Set the environment variable for chef client
#export PATH="/opt/chef/embedded/bin:/opt/chef/bin:$PATH"

# Set the environment variable for chef client
#export PATH="/opt/chef/embedded/bin:/opt/chef/bin:$PATH"

#export RBENV_ROOT=/usr/local/var/rbenv
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export JAVA_HOME=`/usr/libexec/java_home`
export JAVA_HOME6=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_HOME7=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOROOT/bin:${GOPATH//://bin:}/bin
export VAGRANT=/usr/local/opt/vagrant
export XD_HOME=/usr/local/opt/springxd/libexec/xd
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export GRAILS_HOME=/usr/local/opt/grails/libexec
export GRADLE_OPTS='-Xmx1024m -Xms256m -XX:MaxPermSize=512m'
export TOMCAT8_HOME=/Users/alstom/tools/apache-tomcat-8.0.0-RC10

#export SITEPACKAGES=/usr/local/Cellar/bazaar/2.6.0/lib/python2.7/site-packages
#export PYTHONPATH=$PYTHONPATH:$SITEPACKAGES
#function pypath {
#	if [ "$1" = "" ]; then
#		export PYTHONPATH=$PYTHONPATH:`pwd -P`
#	else
#		export PYTHONPATH=$PYTHONPATH:`pushd -n $1; pwd -P; popd -n`
#	fi
#	echo $PYTHONPATH
#}

# Set the environment variable for the docker daemon
export DOCKER_HOST=tcp://localhost:4243

export MYSQL_HOME=/usr/local/opt/mysql
alias start_mysql='mysql.server start'
alias stop_mysql='sudo $MYSQL_HOME/bin/mysqladmin shutdown'

/usr/local/Cellar/reattach-to-user-namespace/2.3/bin/reattach-to-user-namespace launchctl setenv GOPATH ${GOPATH//://bin:}
/usr/local/Cellar/reattach-to-user-namespace/2.3/bin/reattach-to-user-namespace launchctl setenv GOROOT /usr/local/opt/go/libexec
