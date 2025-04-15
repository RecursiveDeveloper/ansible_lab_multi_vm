#!/bin/bash

PROVISIONING_PATH=$1
ROLES_PATH="${PROVISIONING_PATH}/roles"

if [ -d "${ROLES_PATH}" ]; then
    rm -rf ${ROLES_PATH}/*
fi

ansible-galaxy install \
    -r ${PROVISIONING_PATH}/requirements.yml \
    -p ${ROLES_PATH}