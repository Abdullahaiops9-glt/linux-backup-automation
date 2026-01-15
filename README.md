# Linux Backup Automation Script

This project demonstrates automated directory backups using Bash scripting,
tar compression, cron scheduling, and logging.

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

## STEP 1: Create Project Directory
mkdir linux-backup-automation
cd linux-backup-automation
touch backup.sh backup.log README.md CRON.md
chmod +x backup.sh

## STEP 2: Final Bash Script (backup.sh)

✅ This script includes
arguments + tar + date-based naming + logging

## Usage

## STEP 3: Commands to Run Script (IN ORDER)

1️⃣ Give permission (only once)
chmod +x backup.sh

2️⃣ Run manually
./backup.sh /home/abdullah

3️⃣ Verify backup
ls /backup

4️⃣ Check logs
cat backup.log

📝 Example backup.log Output (TEXT – Jan 2, 2026)
2026-01-02 10:15:01 SUCCESS: Backup completed for /home/abdullah -> /backup/backup-2026-01-02.tar.gz

If error:

2026-01-02 10:12:30 ERROR: Source directory does not exist: /home/invalid

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
