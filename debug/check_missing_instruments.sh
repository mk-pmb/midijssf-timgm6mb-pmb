#!/bin/bash
# -*- coding: utf-8, tab-width: 2 -*-


function check_missing_instruments () {
  export LANG{,UAGE}=en_US.UTF-8  # make error messages search engine-friendly
  local SELFPATH="$(readlink -m "$BASH_SOURCE"/..)"
  cd "$SELFPATH"/.. || return $?

  local ALL_NAMES="require('midijssf-from-sf2-pmb/js/gm1snake.js').join('\n')"
  ALL_NAMES="$(nodejs -p "$ALL_NAMES" | LANG=C sort)"

  local DIFF_SED='
    1!s~^~\t~
    1{N;N;N
      s~^\-{3} \S+\n\+{3} ~~
      s~\n@@[^@\n]+@@\n~:\t~
    }'

  local SF_DIR=
  for SF_DIR in [a-z]*-{cjwt,midijs}/; do
    SF_DIR="${SF_DIR%/}"
    <<<"$ALL_NAMES" diff -sU 0 --label all_inst --label "$SF_DIR" - <(
      ls -- "$SF_DIR"/*.js* | sed -re 's~^.*/~~;s~\.[a-z]+$~~' | LANG=C sort
      ) | sed -re "$DIFF_SED"
  done


  return 0
}










[ "$1" == --lib ] && return 0; check_missing_instruments "$@"; exit $?
