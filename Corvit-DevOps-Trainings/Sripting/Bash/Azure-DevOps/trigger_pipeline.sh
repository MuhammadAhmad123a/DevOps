#!/bin/bash
branch_name='main'
organization='https://dev.azure.com/mfaran/' 
project='Practice'

declare -a pipelines='
loop
parameters
Stages
first-pipeline
Step
'
    for i in $pipelines;do
        az pipelines run --name "$i" --branch $branch_name --org $organization --project $project --output table
    done
