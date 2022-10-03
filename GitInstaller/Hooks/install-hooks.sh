#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0);pwd)
DIR=$(dirname $(dirname $SCRIPT_DIR))

SCRIPTS=(post-checkout post-merge prepare-commit-msg)

for SCRIPT in "${SCRIPTS[@]}"; do
	echo From:"$SCRIPT_DIR/$SCRIPT"
	echo To:"$DIR/.git/hooks/$SCRIPT"

	cp -f "$SCRIPT_DIR/$SCRIPT" "$DIR/.git/hooks/$SCRIPT"
	chmod +x "$DIR/.git/hooks/$SCRIPT"
	echo "Installed $SCRIPT"
done

 