
docker run --name cana-db -d -e POSTGRES_PASSWORD=admin -e POSTGRES_USER=cana-api -e POSTGRES_DB=cana -p 5432:5432  postgres

docker  run --rm --name cana-api-flyway -v $PWD/src:/flyway/sql flyway/flyway -url=jdbc:postgresql://172.17.0.2:5432/cana -user=cana-api -password=admin migrate