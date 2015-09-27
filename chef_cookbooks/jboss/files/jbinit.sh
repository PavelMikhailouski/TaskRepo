#!/bin/bash
ip=$(hostname -I |awk '{print $2}')
case "$1" in
  start)
/usr/local/jboss/bin/run.sh -c default -b $ip &>/dev/null & 
    ;;
  stop) 
/usr/local/jboss/bin/shutdown.sh --host $ip -S -u admin -p admin 
    ;;
  *)
    echo $"Usage: $0 {start|stop}"
    exit 2
esac
exit 0
