#!/bin/bash
# Copyright VMware, Inc.
# SPDX-License-Identifier: APACHE-2.0

# shellcheck disable=SC1091

set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace # Uncomment this line for debugging purposes

# Load libraries
. /opt/bitnami/scripts/liblog.sh
. /opt/bitnami/scripts/libbitnami.sh
. /opt/bitnami/scripts/libzookeeper.sh

# Load ZooKeeper environment variables
. /opt/bitnami/scripts/zookeeper-env.sh

# zookeper demo data cp
if [ "$WITH_DEMO_DATA" = "true" ]; then
    if [ ! "$(ls -A /bitnami/zookeeper/data/)" ]; then
        info "Copying data from /tmp to /bitnami/zookeeper/data/"
        cp -r /tmp/* /bitnami/zookeeper/data/
        info "Waiting for data to be copied..."
        sleep 20
    fi
fi

print_welcome_page

if [[ "$*" = *"/opt/bitnami/scripts/zookeeper/run.sh"* || "$*" = *"/run.sh"* ]]; then
    info "** Starting ZooKeeper setup **"
    /opt/bitnami/scripts/zookeeper/setup.sh
    info "** ZooKeeper setup finished! **"
fi

echo ""
exec "$@"