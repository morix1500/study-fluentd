#!/bin/bash

log_path=/var/tmp/test.log
now=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$1" == "hoge" ]; then
  echo "info,${now},hoge" >> ${log_path}
fi

if [ "$1" == "fuga" ]; then
  echo "info,${now},fuga" >> ${log_path}
fi

if [ "$1" == "piyo" ]; then
  echo "error,${now},piyo" >> ${log_path}
fi
