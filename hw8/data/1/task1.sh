#!/bin/bash

cat fin | awk '{ print $1+$2+$3 }' > fout
