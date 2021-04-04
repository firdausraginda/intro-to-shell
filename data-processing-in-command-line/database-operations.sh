# sql2csv: pulling data from databases -----------------------------
# executes an SQL query on a various sql databases (MS SQL, MySQL, Oracle, PostgreSQL, Sqlite) and output it to a CSV file

# use `--db` to connect to database
# use `--query` to perform SQL query

# Sqlite: starts with `sqlite:///` and ends with `.db`
# Postgres & MySQL: starts with `postgres:///` or `mysql:///` with no `.db`

# sql2csv --db "sqlite:///SpotifyDatabase.db" \       
    # --query "SELECT * FROM Spotify_Popularity" \        
    # > Spotify_Popularity.csv

# csvsql: apply SQL query to a local CSV file -----------------------------

# use `csvsql` and print use `csvlook`
# csvsql --query "SELECT * FROM Spotify_MusicAttributes" \    
#     data/Spotify_MusicAttributes.csv | csvlook

# use 'csvsql' and output to a local CSV file
# csvsql --query "SELECT * FROM Spotify_MusicAttributes LIMIT 1" \    
#   data/Spotify_MusicAttributes.csv > OneSongFile.csv

# can also joining CSV using SQL syntax
# csvsql --query "SELECT * FROM file_a INNER JOIN file_b..." file_a.csv file_b.csv

# csvsql pushing data back to database -----------------------------

# use `--insert` to insert data to database, but only valid when `--db` is specified
# use `--no-inference` to disable type inference when parsing input
# use `--no-constraints` to generate a schema without length limits or null checks

# e.g.
# csvsql --no-inference --no-constraints \       
#     --db "sqlite:///SpotifyDatabase.db" \       
#     --insert Spotify_MusicAttributes.csv