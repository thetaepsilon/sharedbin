#!/bin/sh
mirror="$(cat /etc/mirrorsync.url)";
store="/srv/mirror/archlinux";

cd $store;
echo "--- Local directory: $store";
echo "--- rsync prefix: $mirror";
for repo in core extra community multilib; do {
	echo "--- Syncing repo $repo";
	mirror_repo_get.sh "${mirror}" "${repo}";
}; done;
