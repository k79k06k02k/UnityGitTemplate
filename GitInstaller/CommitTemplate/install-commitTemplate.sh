#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0);pwd)
DIR=$(dirname $(dirname $SCRIPT_DIR))

cd $DIR

FROM="$SCRIPT_DIR/commit_msg_template.txt"
TO=".git/commit_msg_template.txt"

echo $FROM
echo $TO

cp -f $FROM $TO
git config commit.template $TO
git config commit.cleanup strip

echo "Installed Commit Template"


