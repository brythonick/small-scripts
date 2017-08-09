#!/bin/bash

# Generate written report template and directories for LaTeX.
# Expects path for report as arg 1. 'Report' dir is created at path to containing all files.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# ^ Thanks to: https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within

if [[ ! $1 ]]; then
	echo "No path given"
	exit 1
fi

cd $1

mkdir -p $1/Report/images/{diagrams,photos,maps}
mkdir $1/Report/sections
cat $DIR/template.tex > $1/Report/report.tex
