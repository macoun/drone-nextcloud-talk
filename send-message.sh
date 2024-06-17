#!/bin/sh

fatal() {
    echo $1 && exit 1
}

ensure_env() {
    [ "${PLUGIN_NC_TOKEN}" == "" ] && fatal "PLUGIN_NC_TOKEN not set"
    [ "${PLUGIN_NC_SECRET}" == "" ] && fatal "PLUGIN_NC_SECRET not set"
    [ "${PLUGIN_NC_ENDPOINT}" == "" ] && fatal "PLUGIN_NC_ENDPOINT not set"
    [ "${PLUGIN_MESSAGE}" == "" ] && fatal "PLUGIN_MESSAGE not set"
}

ensure_env

nctalk \
    --token "${PLUGIN_NC_TOKEN}" \
    --secret "${PLUGIN_NC_SECRET}" \
    --endpoint "${PLUGIN_NC_ENDPOINT}" \
    --message "${PLUGIN_MESSAGE}"
