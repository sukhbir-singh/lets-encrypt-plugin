#!/bin/bash

usage() {
    echo "Usage: $0 [-l <list required folders>] [-w <webapp name>] [-d <domain name>] [-r <remove settings>] [-a <apply settings>]" 1>&2; 
    exit 1; 
}

list() {
    basename -a $(ls -d /var/hda/web-apps/*/) > app_list.txt
}

apply() {
    sed -i "/ServerAlias/ aServerAlias $domain" /etc/httpd/conf.d/*-$webapp.conf
}

remove() {
    sed -i "/$domain/d" /etc/httpd/conf.d/*-$webapp.conf
}

while getopts ":lw:d:ra" o; do
    case "${o}" in
        l)
            list
            exit 1;
            ;;
        w)
            webapp=${OPTARG}
            ;;
        d)
            domain=${OPTARG}
            ;;
        r)
            remove
            exit 1;
            ;;
        a)
            apply
            exit 1;
            ;;
        *)
            usage
            ;;
        
    esac
done