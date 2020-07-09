#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install core for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
core_package_name="core"

CORE_PLUGIN_DIR="$(dirname "${0}":A)"
CORE_SOURCE_PATH="${CORE_PLUGIN_DIR}"/src

# shellcheck source=/dev/null
source "${CORE_SOURCE_PATH}"/base.zsh


function core::dependences {
    message_info "Installing dependences for $core_package_name"
    message_success "Installed dependences for $core_package_name"
}

function core::packages {
    message_info "Install packages for $core_package_name"
    message_success "Installed packages for $core_package_name"
}

function core::install {
    core::dependences
    message_info "Installing $core_package_name"
    message_success "Installed $core_package_name"
}

function core::post_install {
    message_info "Post Install $core_package_name"
    message_success "Success Install $core_package_name"
}

function core::load {
    message_info "core load"
    message_success "Success Install core_load"
}

core::load

if ! type -p core > /dev/null; then
    core::install
    core::post_install
fi
