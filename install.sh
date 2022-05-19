#!/usr/bin/env sh

log() {
  status="progress=${1}\nmessage=${2}\nstatusCode=${3}\n"
  echo $status | tee status
  echo $status >> /tmp/sim-install.log
  sleep 5
}

log_info() {
  log "${1}" "${2}" 200
}

log_info "0" "Coping simulator files"
cp simulator.service /etc/systemd/system/

log_info "50" "Starting simulator service"
systemctl daemon-reload
# systemctl enable simulator.service
# systemctl start simulator
# do some other sophisticated stuff here ;-)

log_info "100" "Simulator install finished successful"
