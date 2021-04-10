#!/bin/bash
echo "First arg: $1"
echo "Second arg: $2"
echo "Third arg: $3"

if [[ $1 != NULL && $2 != NULL && $3 != NULL ]];

	then

        #Client commit
	    cd personalPortfolioClient
        git add .
        git commit -m ""+$1
        git push
        cd ..

        #Server commit
        cd personalPortfolioServer
        git add .
        git commit -m ""+$2
        git push
        cd ..

        #Big repo commit
        git add .
        git commit -m ""+$3
        git push

    else
	  echo -e "2 parameters need to be entered:"
      echo -e "1: Commit message for the client"
      echo -e "2: Commit message for the server"
      echo -e "3: Commit message for the big repo"
	fi