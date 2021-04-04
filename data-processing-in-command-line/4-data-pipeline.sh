# python script execution on the command line -----------------------------
# echo "print('hello world')" > hello_world.py

# pip install with requirements.txt -----------------------------
# pip install -r requirements.txt

# cron -----------------------------
# time-based job-scheduler used to automate jobs like system maintenance, bash script, python jobs, etc

# to print existing cron job
# crontab -l

# to add job to crontab
# echo "* * * * * python create_model.py" | crontab