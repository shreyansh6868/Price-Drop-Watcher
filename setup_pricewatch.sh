#!/bin/bash
# ============================================================
#  STARTER KIT – L31 Price Drop Watcher
#  Student: SHREYANSH GUPTA  Roll: H08  Div: G
#  Run:  bash setup_pricewatch.sh
#  It creates ~/linux_project/pricewatch with folders, sample data and
#  EMPTY script files with TODO comments. You write all the code yourself.
# ============================================================
P="$HOME/linux_project/pricewatch"
if [ -d "$P" ]; then echo "Folder $P already exists. Rename or delete it first."; exit 1; fi
mkdir -p "$P"/lib "$P"/data "$P"/reports "$P"/backups "$P"/logs
cd "$P" || exit 1

# sample data: data/prices.csv
cat > 'data/prices.csv' <<'KIT_DATA_0'
date,item,price
2026-10-01,Sneakers,4999
2026-10-15,Sneakers,4299
KIT_DATA_0

cat > lib/functions.sh <<'KIT_FUNCS'
#!/bin/bash
# lib/functions.sh – Price Drop Watcher
# Write ALL functions here. main.sh loads this file with: source lib/functions.sh
DATA="data/prices.csv"

LOG="logs/activity.log"

# TODO: log  -> write one line "date time | message" into $LOG
#        hint: date, echo, >>
log() {
    :
}

# TODO: check_data -> if $DATA does not exist, print a message and return 1
#        hint: file test operators (-e, -f, -d)
check_data() {
    :
}

# TODO: show_help -> print how to use ./main.sh, ./main.sh --help, --backup, --cron
show_help() {
    echo "TODO: write the help text"
}

# TODO: view_data -> show the data file with line numbers (or list the folder)
#        hint: cat -n, more, ls -l
view_data() {
    echo "TODO: show the data"
}

# TODO: do_backup -> create backups/data_<date_time>.tar.gz of the data/ folder
#        hint: tar -czf, date +%Y%m%d_%H%M%S, du -h
do_backup() {
    echo "TODO: make a backup"
}

# TODO: view_log -> show the last 15 lines of $LOG
#        hint: tail
view_log() {
    echo "TODO: show the log"
}

# ------------------------------------------------------------
# FEATURE 1: Add today's price
# Commands you can use: awk, bc, sort, grep
# Hints (see Step 5 of your guide):
#   - Columns in your data file are separated by a comma: date, item, price.
#   - Ask the user for each value with read -p.
#   - Check that no value is empty before saving.
#   - Add ONE new line at the end of the data file (use >>), with the values in the same order as the header.
#   - Show a 'Saved' message and write to the activity log.
# ------------------------------------------------------------
feature_1() {
    echo "TODO: Add today's price"
}

# ------------------------------------------------------------
# FEATURE 2: Lowest and highest price per item
# Commands you can use: awk, bc, sort, grep
# Hints (see Step 6 of your guide):
#   - Columns in your data file are separated by a comma: date, item, price.
#   - Remove the header line first (tail).
#   - Take only the column you need (cut with the right delimiter).
#   - Group and count with sort and uniq -c, or sort by a number column with sort -t and -k.
#   - Show only the top results with head.
# ------------------------------------------------------------
feature_2() {
    echo "TODO: Lowest and highest price per item"
}

# ------------------------------------------------------------
# FEATURE 3: % change since first record (bc)
# Commands you can use: awk, bc, sort, grep
# Hints (see Step 7 of your guide):
#   - Columns in your data file are separated by a comma: date, item, price.
#   - Ask the user for each value with read -p.
#   - Check that no value is empty before saving.
#   - Add ONE new line at the end of the data file (use >>), with the values in the same order as the header.
#   - Show a 'Saved' message and write to the activity log.
# ------------------------------------------------------------
feature_3() {
    echo "TODO: % change since first record (bc)"
}

# ------------------------------------------------------------
# FEATURE 4: Alert if drop > 10%
# Commands you can use: awk, bc, sort, grep
# Hints (see Step 8 of your guide):
#   - Columns in your data file are separated by a comma: date, item, price.
#   - Use awk with the right field separator to read the number column (price is column 3).
#   - Skip the header line (it is line 1).
#   - Add the values (and count them if you need an average) and print the result neatly with printf.
#   - For decimals in bash use bc (scale=2).
# ------------------------------------------------------------
feature_4() {
    echo "TODO: Alert if drop > 10%"
}

# ------------------------------------------------------------
# FEATURE 5: Price history report
# Commands you can use: awk, bc, sort, grep
# Hints (see Step 9 of your guide):
#   - Columns in your data file are separated by a comma: date, item, price.
#   - Collect the output of your commands in one block.
#   - Write it into the reports/ folder; put today's date in the file name (date command).
#   - Use > to create the file and >> to add more lines.
#   - Tell the user the file name that was saved.
# ------------------------------------------------------------
feature_5() {
    echo "TODO: Price history report"
}

# ------------------------------------------------------------
# CRON TASK: Every day at 10 AM, check prices.csv and append any >10% drop alerts to alerts.log
# This runs when crontab calls:  ./main.sh --cron
# Write the output into reports/ or a file, and log it.
# ------------------------------------------------------------
cron_task() {
    echo "TODO: Every day at 10 AM, check prices.csv and append any >10% drop alerts to alerts.log"
}
KIT_FUNCS

cat > main.sh <<'KIT_MAIN'
#!/bin/bash
# main.sh – L31 Price Drop Watcher
# YOUR TASK: build the menu program in this file (Step 3 of your guide).
cd "$(dirname "$0")" || exit 1
source lib/functions.sh

# TODO 1: command-line arguments (use $1 and case...esac)
#   ./main.sh --help    -> call show_help, then exit
#   ./main.sh --backup  -> call do_backup, then exit
#   ./main.sh --cron    -> call cron_task, then exit

# TODO 2: menu (use a while loop + read + case...esac)
#   Show a title, then these options, read the choice and call the function:
#     1) Add today's price
#     2) Lowest and highest price per item
#     3) % change since first record (bc)
#     4) Alert if drop > 10%
#     5) Price history report
#     6) View data            -> view_data
#     7) Backup data          -> do_backup
#     8) View activity log    -> view_log
#     0) Exit                 -> say bye and stop the loop (break)
#   Any other choice -> print "Invalid choice"

echo "Menu not built yet. Open main.sh and complete TODO 1 and TODO 2."
KIT_MAIN

cat > README.md <<'KIT_README'
# L31 – Price Drop Watcher

**Student:** SHREYANSH GUPTA | **Roll:** H08 | **Division:** G | **Enrollment:** 24004501210104

## Problem
Track item prices over time and alert on price drops.

## Who will use it
Deal hunters waiting for the right price.

## Folder structure
(explain what each file and folder is for)

## Features
1. Add today's price
2. Lowest and highest price per item
3. % change since first record (bc)
4. Alert if drop > 10%
5. Price history report

## How to run
(write the commands to run your project)

## My crontab line and what it means
(write your crontab line and explain the 5 time fields)

## Commands I used and why
(list the commands and where you used them)

## What I learned
(write 3-5 lines)
KIT_README

chmod +x main.sh
echo
echo "Starter kit ready!  Folder: $P"
ls -R "$P"
echo
echo "Next:  cd ~/linux_project/pricewatch  and follow your project guide."
