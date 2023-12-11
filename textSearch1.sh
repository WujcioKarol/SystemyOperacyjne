#!/bin/bash
echo -e '\nZ1\n'
grep -oP '((?<=[[:space:]]|^))(?<![+-])0x[0-9A-Fa-f]+' $1
echo -e '\nZ2\n'
grep -oP '((?<=[[:space:]]|^))[a-zA-z0-9\.\:\;\,]+@[0-9a-zA-z.-]+\.[0-9a-zA-z-]+' $1
echo -e '\nZ3\n'
grep -oP '((?<=[[:space:]]|^))([\+\-]*?\d*\.\d+)(?=\s+|$)' $1
