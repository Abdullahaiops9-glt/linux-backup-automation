# linux-backup-automation
This project demonstrates a real-world Linux backup automation solution using Bash scripting. It covers argument handling, tar-based compression, logging, and cron scheduling to perform reliable, automated directory backups — a common system administration and DevOps task.

## Features
- Date-based compressed backups
- Argument-based source directory
- Automatic destination creation
- Logging of backup status
- Cron job automation

## Project Structure
linux-backup-automation/
├── backup.sh
├── backup.log
├── README.md
├── CRON.md

## Usage

### Make script executable
chmod +x backup.sh

### Run manually
./backup.sh /home/abdullah

### Check backups
ls /backup

### Check logs
cat backup.log

## Cron Automation
Edit crontab:
crontab -e

Example (daily at 1 AM):
0 1 * * * /home/abdullah/linux-backup-automation/backup.sh /home/abdullah

## Concepts Covered
- File system operations
- tar compression
- Bash arguments
- Logging
- Cron scheduling

## Conclusion
This project reflects a real-world Linux administrative task where automation
ensures data safety and consistency. It demonstrates practical Bash scripting
skills required in system administration and DevOps environments.
