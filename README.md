# Puppet debian installation

Install on a new debian based server (tested on squeeze)

    apt-get install git puppet
    git clone git@github.com:V-labs/puppet-debian.git puppet
    cd puppet/
    puppet apply --modulepath=modules manifests/main.pp

Then you might want to manually config munin & check firewall