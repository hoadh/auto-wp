# for d in ./*/ ; do (docker-compose up -d); done

for i in $( ls | grep "project_" ); do
    (cd "./$i" && docker-compose down);
done