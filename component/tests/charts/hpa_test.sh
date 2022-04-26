#!/usr/bin/env bash
$CZ helm template | sed -n '/hpa\.yaml/,/Source\:/p'