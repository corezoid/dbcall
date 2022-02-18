#!/usr/bin/env bash
$CZ helm template | sed -n '/service\.yaml/,/Source\:/p'