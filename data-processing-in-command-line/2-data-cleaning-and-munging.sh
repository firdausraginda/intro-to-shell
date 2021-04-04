# csvkit: command-line tools to process and clean CSV files -----------------------------

# in2csv: converting files to CSV -----------------------------
# in2csv SpotifyData.xlsx > SpotifyData.csv

# use `-n` to print all sheet names in an xlsx file
# in2csv -n SpotifyData.xlsx

# use `--sheet` to specify which sheet want to convert to csv 
# in2csv SpotifyData.xlsx --sheet "Worksheet1_Popularity" > Spotify_Popularity.csv

# csvlook: data preview on the command line -----------------------------
# csvlook Spotify_Popularity.csv

# csvstat: descriptive stats on CSV file -----------------------------
# csvstat Spotify_Popularity.csv

# csvcut: filtering data by column -----------------------------

# use `-c` to filter data by column (using column name)
# csvcut -c "danceability","duration_ms" Spotify_MusicAttributes.csv

# use `-c` to filter data by column (using index name)
# csvcut -c 2,3 Spotify_MusicAttributes.csv


# csvgrep: filtering data by row value -----------------------------

# use `-m` to match with string
# use `-r` to match with regex pattern

# e.g. to find row that contain specific track_id
# csvgrep -c "track_id" -m 5RCPsfzmEpTXMCTNk7wEfQ Spotify_Popularity.csv

# csvstack: stacking multiple CSV files -----------------------------
# csvstack Spotify_Rank6.csv Spotify_Rank7.csv > Spotify_AllRanks.csv

# use `-g` to add column consists of identifier of which file this row come from
# csvstack -g "Rank6","Rank7" Spotify_Rank6.csv Spotify_Rank7.csv > Spotify_AllRanks.csv

# chaining command-line commands -----------------------------

# use `;` to run some commands sequentially
# csvlook SpotifyData_All.csv; csvstat SpotifyData_All.csv

# use `&&` to make sure 2nd command runs after 1st command succeeds
# csvlook SpotifyData_All.csv && csvstat SpotifyData_All data.csv

# use `|` to use the output of 1st command as input to the 2nd command
# csvcut -c "track_id","danceability" Spotify_Popularity.csv | csvlook