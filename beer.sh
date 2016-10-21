#!/usr/bin/env bash

declare -r OK=0
declare -r ERROR=1
declare -r PROGNAME=$(basename $0)
declare -r VERSION="0.0.1"

usage() {
cat <<_EOT_
Usage: $PROGNAME

Description:
    Ʊ"-ʓ(ビール) means "beer" in japanese. It just say beer! command.

_EOT_
  exit $ERROR
}

version() {
  echo $VERSION
  exit $ERROR
}

say_beer() {
  echo "＼Ʊ\"-ʓ／＼Ʊ\"-ʓ／"
  echo "ʕ•̫͡•ʕ•̫͡•ʔ•̫͡•ʔ•̫͡•ʕ•̫͡•ʔ•̫͡•ʔ"
  return $OK
}

main() {
  # options
  for OPT in "$@"
  do
    case "$OPT" in
      'help'|'-h'|'--help' )
        usage
        exit $OK
        ;;
      'version'|'--version' )
        version
        exit $OK
        ;;
      *)
        ;;
    esac
  done

  say_beer
}

main $@