#!/usr/bin/env bash

function log() {
  status="progress=${1}
message=${2}
statusCode=${3}"
  echo $status > status
  echo $status >> /tmp/sim-install.log
}

function log_info() {
  log ${1} ${2} 200
}

log_info "0" "Starting simulator install..."

cp simulator.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable simulator.service
# systemctl start simulator
# do some other sophisticated stuff here ;-)

log_info "100" "Simulator install finished successful"
