#!/bin/bash

# compress the blank lines
cat -sn stext

# even remove them
cat stext | tr -s '\n'


