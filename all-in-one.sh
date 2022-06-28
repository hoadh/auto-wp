PORT=8000;
DB_PORT=3306;

for i in {1..15}
do
    CURRENT_PORT=$(( $PORT  + $i ));
    CURRENT_DB_PORT=$(( $DB_PORT  + $i ));
    PROJECT_NAME="project$i";
    FOLDER_NAME="project_$i";
    (cp -rf template_project $FOLDER_NAME);
    (cd "./$FOLDER_NAME" && echo "PORT=$CURRENT_PORT" >> .env && echo "DB_PORT=$CURRENT_DB_PORT" >> .env && echo "NET_WORK=x_codegym" >> .env && echo "VIRTUAL_HOST=$PROJECT_NAME.wp.warface.codegym.vn" >> .env);
done
