#!/bin/bash
# SPDX-FileCopyrightText: 2025 Yusuke Kuga 　　　　　
# SPDX-License-Identifier: GPL-3.0-only

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 5 | ./average)
[ "${out}" = 3.0 ] || ng "$LINENO"

out=$(echo あ| ./average)
[ "$?" = 1 ]      || ng "$LINENO"
[ "$(out)" = "" ] || ng "$LINENO"

out=$(echo | ./average)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
