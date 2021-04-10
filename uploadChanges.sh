#!/bin/bash

#Git changes verification
function verifyStatus {
    CHANGED=$(git status --porcelain --untracked-files=no)

    if [ -n "${CHANGED}" ]; then
        git add .
        read -p "Commit description for $1: " description 
        git commit -m "$description"
        git push
        cd ..
    else
        cd ..
    fi
    
}

#Client commit
cd personalPortfolioClient || exit
verifyStatus "Client"

#Server commit
cd personalPortfolioServer || exit
verifyStatus "Server"

#Big repo commit
verifyStatus "General"
