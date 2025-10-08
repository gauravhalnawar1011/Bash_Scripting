#!/bin/bash
# ====================================================
# Bash Useful Concepts & File/Directory Checks
# ====================================================

# ---------- basename ----------
# 'basename' removes directory path and shows only filename
filepath="/home/user/Documents/report.txt"
echo "Full path: $filepath"
echo "Basename (only filename): $(basename "$filepath")"
echo

# ---------- dirname ----------
# 'dirname' removes filename and gives only directory path
echo "Dirname (only path): $(dirname "$filepath")"
echo

# ---------- realpath ----------
# 'realpath' gives full absolute path (resolves relative paths)
relfile="report.txt"
echo "Real path of file '$relfile': $(realpath "$relfile" 2>/dev/null || echo 'File not found')"
echo

# ---------- Check if directory exists ----------
folder="myfolder"

if [ -d "$folder" ]; then
    echo "✅ Directory '$folder' exists."
else
    echo "❌ Directory '$folder' does not exist. Creating it..."
    mkdir "$folder"
    echo "📁 Directory created."
fi
echo

# ---------- Check if file exists ----------
file="myfile.txt"

if [ -f "$file" ]; then
    echo "✅ File '$file' exists."
else
    echo "❌ File '$file' not found. Creating it..."
    touch "$file"
    echo "📝 File created."
fi
echo

# ---------- Check if folder not exists ----------
another_folder="backup"
if [ ! -d "$another_folder" ]; then
    echo "Creating missing folder '$another_folder'..."
    mkdir "$another_folder"
else
    echo "Folder '$another_folder' already exists."
fi
echo

# ---------- RANDOM ----------
# RANDOM generates a number between 0 and 32767
echo "Random number: $RANDOM"
# Example: generate random number between 1–100
echo "Random number between 1 and 100: $((RANDOM % 100 + 1))"
echo

# ---------- UID ----------
# UID is the User ID of the current user
echo "Current User ID (UID): $UID"
echo

# ---------- Example combining checks ----------
# Create a file only if not exists, and then show its full path
test_file="example.txt"

if [ ! -f "$test_file" ]; then
    echo "File '$test_file' does not exist, creating now..."
    touch "$test_file"
fi

echo "Full path of '$test_file' is: $(realpath "$test_file")"
echo

# ---------- Summary ----------
echo "✅ Script executed successfully!"

