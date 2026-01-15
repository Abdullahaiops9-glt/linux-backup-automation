# Cron Job Configuration – Linux Backup Automation

This document explains how to schedule the backup script using `cron`
so that backups run automatically without manual intervention.

---

## What is Cron?

Cron is a Linux scheduling service that allows commands or scripts
to run automatically at specified times and intervals.

## Opening the Crontab

To edit the crontab for the current user, run:

crontab -e
This opens the cron configuration file in your default editor.

Cron Job Syntax

* * * * * command_to_execute
| | | | |
| | | | └── Day of week (0–7) (Sunday = 0 or 7)
| | | └──── Month (1–12)
| | └────── Day of month (1–31)
| └──────── Hour (0–23)
└────────── Minute (0–59)

Example: Daily Backup at 1:00 AM

To run the backup script every day at 1:00 AM, add this line:

0 1 * * * /home/abdullah/linux-backup-automation/backup.sh /home/abdullah

What this does:

Runs the script daily at 1 AM

Backs up /home/abdullah

Creates a date-based compressed archive

Appends logs to backup.log
