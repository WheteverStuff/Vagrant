# Ubuntu 14.04 with Nginx and HHVM

## Starting
run setup.sh and wait for it to happen.
The ../Script directory will be mounted for the script

There are a few issues here and there, namely 

* A "vagrant up" is not enough, you have to run a "vagrant provision" afterwards. The problem as I tracked down is caused by the hhvm repo not being pulled in on time. Due to the shortage of time, I left this as it is.
* Cassandra is not working, it wants java 8 and installs java 7. Thus it never starts. A fix is on the way, maybe I can spare a few hours during the weekend to fix it.

All in all, it would still need some refinement (much IMO), but you get the concept.
