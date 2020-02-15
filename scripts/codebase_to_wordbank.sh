#!/usr/bin/env bash
grep -rwho -E '[a-zA-Z]{2,15}' . | LC_ALL=C grep -v -P [$'\x80'-$'\xFF'] | sort | uniq -c | sort -nr | head -200 | awk '{print $2}'