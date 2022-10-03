#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0);pwd)

COMMIT_MESSAHE_SH=CommitTemplate/install-commitTemplate.sh
HOOKS_SH=Hooks/install-hooks.sh

cd $SCRIPT_DIR

git lfs install --local

echo
echo "- Commit Message -----------------"
chmod +x $COMMIT_MESSAHE_SH
./$COMMIT_MESSAHE_SH
echo "----------------------------------"
echo

echo
echo "- Hooks --------------------------"
chmod +x $HOOKS_SH
./$HOOKS_SH
echo "----------------------------------"
echo

echo "Installed"


