#!/bin/bash
ip addr show dev eno2 | grep -w "inet" | awk '{print $2}'
