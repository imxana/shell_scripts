#!/bin/bash

script -t 2>timing.log -a output.session

# scriptreplay timing.log output.session
