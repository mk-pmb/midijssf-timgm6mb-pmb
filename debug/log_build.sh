#!/bin/bash
# -*- coding: utf-8, tab-width: 2 -*-


function log_build_timgm6mb () {
  export LANG{,UAGE}=en_US.UTF-8  # make error messages search engine-friendly
  local SELFPATH="$(readlink -m "$BASH_SOURCE"/..)"
  cd "$SELFPATH"/.. || return $?

  local TIMECAT=( timecat -f '@%@ %, +%+ %, ' )
  </dev/null "${TIMECAT[@]}" &>/dev/null || TIMECAT=cat

  local LOGS_DIR='debug/build-logs'
  mkdir -p "$LOGS_DIR" || return $?
  memlimit_loud 256 nodejs convert.js |& "${TIMECAT[@]}" \
    | tee -- "$LOGS_DIR/$(date +'%y%m%d-%H%M%S')".log
  local RV="${PIPESTATUS[*]}"
  let RV="${RV// /+}"
  return $RV
}


function memlimit_loud () {
  local KB="$1"; shift
  echo -n "ulimit -v ${KB}k: "
  ulimit -v $(( $KB * 1024 )) || return $?
  ulimit -v
  "$@"; return $?
}









[ "$1" == --lib ] && return 0; log_build_timgm6mb "$@"; exit $?
