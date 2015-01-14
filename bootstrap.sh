#!/bin/bash
source /root/admin-openrc.sh
if [[ x"$1" == x"bash" ]]
then
	/bin/bash
else
	/bin/bash -c "$*"
fi
