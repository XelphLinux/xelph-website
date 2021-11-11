#!/usr/bin/env bash
 if ! command -v docker &> /dev/null
then
	echo "install docker"
fi
sudo docker pull woahbase/alpine-quasar:x86_64
