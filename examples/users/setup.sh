
psql -f install.sql -U postgres
PGPASSWORD=1111 psql -d users -f structure.sql -U pius