#! /bin/bash

#cd /C/Users/302-TCFST/test-iii/pic

ls
while true
do
  echo 'test'
  fc="$(ls | wc -l)"
  if [ $fc -gt 0 ];
    then
	  echo 'test1'
      FILES=./pic/*
	  echo 'test2'
      for f in $FILES
      do
        /mingw64/bin/git add $f
        /mingw64/bin/git commit -m "$(date +%H-%M-%S)"
        /mingw64/bin/git remote add origin git@github.com/JeffreyYen/iii.git
        /mingw64/bin/git push -u origin master
        /mingw64/bin/git remote remove origin
      done
  fi;
  rm -rf /C/Users/302-TCFST/test-iii/pic/*
  sleep 3
done
