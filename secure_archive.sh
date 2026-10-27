
#!/usr/bin/env bash
set -euo pipefail

LAB_DIR="security_lab"
mkdir -p "$LAB_DIR"

printf 'Confidential lab notes\n' > "$LAB_DIR/notes.txt"
chmod 600 "$LAB_DIR/notes.txt"

echo "File permissions:"
ls -l "$LAB_DIR/notes.txt"

tar -czf security_lab.tar.gz "$LAB_DIR"

echo
echo "Archive contents:"
tar -tzf security_lab.tar.gz
