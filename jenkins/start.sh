#!/bin/bash

sudo chown jenkins /var/run/docker.sock
/sbin/tini -- /usr/local/bin/jenkins.sh
