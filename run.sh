#! /usr/bin/env bash

if [[ -z "$JAR" ]]; then
  export JAR=$(basename $(ls -1 /microservice/*.jar | head -1))
else
  echo Using $JAR from ENV

  if [ ! -f "$JAR" ]; then
    echo "$JAR is not a file, quitting"
    exit 1
  fi
fi

echo Running $JAR!
echo

java -jar "$JAR" server config.yml
