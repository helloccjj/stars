#!/bin/bash
mkdir /etc/yum.repos.d/backup
mv /etc/yum.repos.d/ep* /etc/yum.repos.d/backup
mv /etc/yum.repos.d/ro* /etc/yum.repos.d/backup
ls /etc/yum.repos.d/
