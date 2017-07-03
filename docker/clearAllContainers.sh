#!/bin/bash

echo 'Clear all docker containers'
docker ps -a
echo 'Attempting stop & remove...'
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
echo 'Log after clearing...'
docker ps -a
