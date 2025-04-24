#!/bin/bash

cat fin | awk '{print(substr($0, 10, 1))} ' > fout
