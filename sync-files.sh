#!/usr/bin/env bash

set -a
set -u
source .env
set +a

echo $OBSIDIAN_VAULT_CONFIG

rsync -a --delete "$OBSIDIAN_VAULT_CONFIG"/ "obsidian-config/"
rsync -a --delete "$OBSIDIAN_VAULT_TEMPLATES"/ "obsidian-templates/"
rsync -a --delete "$OBSIDIAN_VAULT_BASES"/ "obsidian-bases/"