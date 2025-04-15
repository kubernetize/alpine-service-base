#!/bin/sh

set -e

# Simply walk through files in /entrypoint.d/, source .sh files
# and execute others
for f in /entrypoint.d/*; do
	if [[ "$f" == "*.sh" ]]; then
		source "$f"
	else
		"$f"
	fi
done

# Finally run the COMMAND line
exec "$@"

# Should not get here
echo "[-] entrypoint.sh finished"
exit 99
