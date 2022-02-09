#!/bin/bash
free -m | awk 'NR==2{printf "Mem: %.2f%%\n",$3*100/$2 }'

