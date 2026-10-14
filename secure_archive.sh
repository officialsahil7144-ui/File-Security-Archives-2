
#!/usr/bin/env bash
set -e

WORK="security_lab"
mkdir -p "$WORK"

printf 'Confidential lab note\n' > "$WORK/notes.txt"

chmod 600 "$WORK/notes.txt"

tar -czf "$WORK/notes.tar.gz" "$WORK/notes.txt"

printf '%s\n' "Permissions:"
ls -l "$WORK/notes.txt"

printf '%s\n' "Archive contents:"
tar -tzf "$WORK/notes.tar.gz"
