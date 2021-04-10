#!/bin/bash

for arg in "$@"; do
    echo "$arg"
done

if [[ $1 != "" && $2 != "" && $3 != "" ]]; then

    #Client commit
    cd personalPortfolioClient || exit
    git add .
    git commit -m "$1"
    git push
    cd ..

    #Server commit
    cd personalPortfolioServer || exit
    git add .
    git commit -m "$2"
    git push
    cd ..

    #Big repo commit
    git add .
    git commit -m "$3"
    git push

else

    echo -e "3 parameters need to be entered:"
    echo -e "1: Commit message for the client"
    echo -e "2: Commit message for the server"
    echo -e "3: Commit message for the big repo"

fi
