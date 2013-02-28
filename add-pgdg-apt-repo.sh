#!/bin/bash

if [ -f /etc/apt/sources.list.d/pitti-postgresql-$(lsb_release --codename --short).list ]; then
  rm /etc/apt/sources.list.d/pitti-postgresql-$(lsb_release --codename --short).list
fi

echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release --codename --short)-pgdg main" > /etc/apt/sources.list.d/pgdg.list

wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -

apt-get update
apt-get install pgdg-keyring
