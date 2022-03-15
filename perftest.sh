host="fabmedical-562476.mongo.cosmos.azure.com"
username="fabmedical-562476"
password="E6nrYpyC4vOoCSlBvUvDAMU7dcl4HUothy7ZjBvrAtU8mI2MKEfFuZzJK0kBLRE7zZJ6Lo8VMjihLLmiRPeanw=="
dbname="contentdb"


for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done