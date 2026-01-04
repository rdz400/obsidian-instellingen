#!/usr/bin/env bash

set -a
set -u
source .env
set +a


echo "Syncing: $OBSIDIAN_VAULT_CONFIG"
rsync -a --delete "$OBSIDIAN_VAULT_CONFIG"/ "obsidian-config/"

echo "Syncing: $OBSIDIAN_VAULT_TEMPLATES"
rsync -a --delete "$OBSIDIAN_VAULT_TEMPLATES"/ "obsidian-templates/"

echo "Syncing: $OBSIDIAN_VAULT_BASES"
rsync -a --delete "$OBSIDIAN_VAULT_BASES"/ "obsidian-bases/"