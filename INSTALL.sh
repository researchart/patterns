#!/usr/bin/env bash

# The following script DOES work for MAC, might work for LINUX,
# and WONT work for WINDOWS (since I have mostly MAC experience, 
# and a little LINUX as well)

here=$(cd $( dirname "${BASH_SOURCE[0]}" ) && pwd ) 
mkdir -p $here/var

chmod +x $here/build.sh
chmod +x $here/build1.sh

# Check what operating system is in use:
   OS_TYPE="$( uname )"
   OS_DETAILS=""  # default blank.
if [ "$(uname)" == "Darwin" ]; then  # it's on a Mac:
      OS_TYPE="macOS"
      GET="brewget"
elif [ "$(uname)" == "Linux" ]; then  # it's on some Linux variant:
   if command -v lsb_release ; then
      lsb_release -a
      OS_TYPE="Ubuntu"
      GET="aptget"

      silent-apt-get-install(){  # "$1" refers to parameter of package to install:
         sudo DEBIAN_FRONTEND=noninteractive apt-get install -qq "$1" < /dev/null > /dev/null
      }
   elif [ -f "/etc/os-release" ]; then
      OS_DETAILS=$( cat "/etc/os-release" )  # ID_LIKE="rhel fedora"
      OS_TYPE="Fedora"
      GET="yum"
   elif [ -f "/etc/redhat-release" ]; then
      OS_DETAILS=$( cat "/etc/redhat-release" )
      OS_TYPE="RedHat"
      GET="yum"
   elif [ -f "/etc/centos-release" ]; then
      OS_TYPE="CentOS"
      GET="yum"
   else
      error "Linux distribution not anticipated. Please update script. Aborting."
      exit 0
   fi
else 
   error "Operating system not anticipated. Please update script. Aborting."
   exit 0
fi

aptget(){  # "$1" refers to parameter of package to install:
   sudo DEBIAN_FRONTEND=noninteractive apt-get install -qq "$1" < /dev/null > /dev/null
}
brewget() {
   brew install $1
}

echo ${GET}
which pandoc   || ${GET} install pandoc
which pdflatex || ${GET} install basictex
