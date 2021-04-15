#!/bin/bash

#Pull server changes
cd personalPortfolioServer || exit
git pull
cd ..

#Pull Client Changes 
cd personalPortfolioClient || exit
git pull
cd ..

#Pull main changes

git pull