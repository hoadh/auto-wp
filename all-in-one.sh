COUNT=0;
PORT=8000;
for i in {1..150}
do
    PORT=$(( $PORT  + 1 ));
    COUNT=$(( $COUNT + 1 ));
    (cp -rf template_project project_$COUNT);
    (cd "./project_$COUNT" && echo "PORT=$PORT" >> .env);
done
