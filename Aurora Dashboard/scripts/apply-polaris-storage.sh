#!/bin/sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
CONFIG_ROOT="${1:-/config}"
DASHBOARD_FILE="$CONFIG_ROOT/.storage/lovelace.dashboard_aurora"
FILTER_FILE="${2:-$SCRIPT_DIR/polaris-storage-filter.jq}"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
BACKUP_FILE="$DASHBOARD_FILE.polaris-ui-refresh-backup-$TIMESTAMP"
TEMP_FILE="$DASHBOARD_FILE.polaris-ui-refresh.tmp"

cleanup() {
  rm -f "$TEMP_FILE"
}

trap cleanup EXIT HUP INT TERM

test -f "$DASHBOARD_FILE"
test -f "$FILTER_FILE"
command -v jq >/dev/null 2>&1

cp "$DASHBOARD_FILE" "$BACKUP_FILE"

jq -f "$FILTER_FILE" "$DASHBOARD_FILE" > "$TEMP_FILE"
jq empty "$TEMP_FILE"
mv "$TEMP_FILE" "$DASHBOARD_FILE"
trap - EXIT HUP INT TERM

printf '%s\n' "Project Polaris Storage Mode styling applied."
printf '%s\n' "Backup: $BACKUP_FILE"
