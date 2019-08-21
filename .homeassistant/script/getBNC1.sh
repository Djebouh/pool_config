#!/usr/bin/env bash

tail -n 10 `ls -At /bbfhistory/BNC1* | head -n1` | awk '{ total += $2; count++ } END { print total/count }'