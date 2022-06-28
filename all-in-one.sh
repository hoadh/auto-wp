COUNT=0;
PORT=8000;
DB_PORT=3306;

for i in {1..15}
do
    PORT=$(( $PORT  + 1 ));
    DB_PORT=$(( $DB_PORT  + 1 ));
    COUNT=$(( $COUNT + 1 ));
    (cp -rf template_project project_$COUNT);
    (cd "./project_$COUNT" && echo "PORT=$PORT" >> .env && echo "DB_PORT=$DB_PORT" >> .env && echo "NET_WORK=x_codegym" >> .env && echo "VIRTUAL_HOST=project$COUNT.wp.warface.codegym.vn" >> .env);
done
