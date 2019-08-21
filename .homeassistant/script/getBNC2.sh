#!/usr/bin/env bash

latest-file-in-directory () {
    find /home/babyfish/history/BNC2* -maxdepth 1 -type f -printf '%T@.%p\0' | \
            sort -znr -t. -k1,2 | \
            while IFS= read -r -d '' -r record ; do
                    printf '%s' "$record" | cut -d. -f3-
                    break
            done
}
tail -n 10 "$(latest-file-in-directory)" | awk '{ total += $2; count++ } END { print total/count }'
