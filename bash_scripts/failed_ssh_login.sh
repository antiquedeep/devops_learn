#!/bin/bash

grep "Failed password" /var/log/secure | wc -l
