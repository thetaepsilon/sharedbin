#!/bin/sh
mirror="rsync://mirror.bytemark.co.uk/archlinux/";
store="/srv/mirror/archlinux";

cd $store;
pwd;
for repo in core extra community multilib; do
{
	mirror_repo_get.sh "${mirror}" "${repo}";
};
done
