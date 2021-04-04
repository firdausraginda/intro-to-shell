# CURL: client for URLs -----------------------------
# unix command line tool to transfer data to and from a server
# used to download data from HTTP(S) sites and FTP servers

# use `-O` to save file with original name
# use `-o` to save and rename the file
# use `-L` to redirect the HTTP URL if encountered 300 error code
# use `-C` to resume a previous file transfer if it times out

# to download multiple files
# curl -L -O -C https://websitename.com/datafilename[001-100].txt

# Wget: world wide web and get -----------------------------
# better than curl at downloading multiple files recursively

# use `-b` to go to background immediately after startup
# use `-q` to turn off the Wget output
# use `-c` to resume the broken download

# e.g.
# wget -bqc https://websitename.com/datafilename.txt

# use `-i` to download from URL locations stored within file .txt
# wget -i url_list.txt

# use `--limit-rate` to set upper download bandwidth limit
# wget --limit-rate=200k -i url_list.txt

# use `--wait` to pause time (in seconds) between file downloads
# wget --wait=2.5 -i url_list.txt