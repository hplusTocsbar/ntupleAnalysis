#!/bin/bash

echo "Welcome to the chargedHiggs offline analysis automagic setup script!"

echo
echo "You should have checked out from hplusTocsbar/ntupleAnalysis. Renaming this to upstream for convenience of existing developers..."
cd $CMSSW_BASE/src/ntupleAnalysis
git remote rename origin upstream
git remote set-url --push upstream DISALLOWED
GITHUBUSERNAME=`git config user.github`
echo "Setting up a new origin repo, assuming your fork name is ${GITHUBUSERNAME} - check this!"
git remote add origin git@github.com:${GITHUBUSERNAME}/ntupleAnalysis.git
git config branch.master.remote origin
git config merge.renamelimit 2000