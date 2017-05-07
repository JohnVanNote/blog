#!/usr/bin/env sh
#
# deploy.sh
#
# John Van Note
# 2017-04-29
#
# Deploying script of blog
#

echo "Building blog..."

hugo server -w

echo "Blog built..."
