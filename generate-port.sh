#!/bin/bash
PORT=8000;
for i in $( ls | grep "project_" ); do
    # echo $i;
    PORT=$(( $PORT  + 1 ));
    (cd "./$i" && echo "PORT=$PORT" >> .env);
    # (PORT =$(( $PORT  + 1 )) && cd "$d" && ls -al);
done