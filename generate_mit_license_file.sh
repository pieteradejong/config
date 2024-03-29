#!/bin/bash

# -------------------------------------------------------
# A shell script that generates a MIT LICENSE file
# Written by: Tom Stewart 
# Last updated on: 2013/15/08
# -------------------------------------------------------

# Verify the type of input and number of values
USAGE="USAGE: $0 copyright_year copyright_holders"
[ $# -eq 0 ] && { echo ""; echo $USAGE; echo ""; exit 1; }

if [ $# -eq 1 ] ; then
  exec >&2; echo ""; echo $USAGE
	
	if ! [[ "$1" =~ ^[0-9]+$ ]] ; then
	   echo "    ERROR: copyright_year is missing, or is not a number"
	else
     echo "    ERROR: copyright_holders is missing."
	fi
	
	echo ""; exit 1
fi

# Set vars
COPYRIGHT_YEAR=$1				# 1st command line argument
COPYRIGHT_HOLDERS=$2

# Source: http://opensource.org/licenses/MIT

cat > LICENSE << EOF
The MIT License (MIT)
Copyright (c) $COPYRIGHT_YEAR $COPYRIGHT_HOLDERS
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
EOF