# source fragment

: ${CONFIG_SOURCE_DIR=/config.source}

# this fragment will process elements listed in environment variable
# CONFIG_SOURCE_FILES. Each element has the format `<src>:<dst>`, where `src`
# is relative to environment variable CONFIG_SOURCE_DIR. The process means
# copying `src` over `dst`, if `src` exists. If `<src>.envsubst` exists,
# `envsubst` is used to replace environment variables in the source file.

for map in $CONFIG_SOURCE_FILES; do
	src="${map%%:*}"
	dst="${map#*:}"
	if [ -z "$src" -o -z "$dst" ]; then
		echo "[-] Invalid entry in CONFIG_SOURCE_FILES: $map"
		exit 1
	fi

	if [ -r "$CONFIG_SOURCE_DIR/$src" ]; then
		cat "$CONFIG_SOURCE_DIR/$src" > "$dst"
	elif [ -r "$CONFIG_SOURCE_DIR/$src.envsubst" ]; then
		envsubst < "$CONFIG_SOURCE_DIR/$src.envsubst" > "$dst"
	else
		echo "[-] No source files found for $map"
		exit 2
	fi
done

unset CONFIG_SOURCE_DIR CONFIG_SOURCE_FILES
