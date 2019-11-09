#!/bin/bash

read name
cat /proc/$(pidof $name)/exe > "${name}-recovered"
chmod u+x "${name}-recovered"