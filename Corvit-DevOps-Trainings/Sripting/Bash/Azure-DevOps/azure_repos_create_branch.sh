#!/bin/bash
source_branch='main'
new_branch='release-1.7'
checkout_dir=~/all_services
mkdir -p $checkout_dir

repositories='
Docker-labs
Kubernetes
Practice
template-repo
'

repo_list=$repositories
 
#repo_list=$(az repos list -o json | jq -r '.[].name')
for repo in $repo_list
do
    echo "$repo : Selected repository, fork $source_branch --> $new_branch"

    cd $checkout_dir
    git clone -b $source_branch git@ssh.dev.azure.com:v3/mfaran/Practice/$repo $checkout_dir/$repo
    if [ -d $repo ]; then
        cd $repo
        git checkout -b $new_branch
        git push --set-upstream origin $new_branch
        cd ..
        rm -rf $repo
        echo -e "\n\n"
    else
        echo -e "Repository doesn't have BRANCH: $source_branch\n\n"
    fi
done
rm -rfv $checkout_dir

