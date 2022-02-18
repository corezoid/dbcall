#!/usr/bin/env bash
$CZ helm template | sed -n '/setup_job\.yaml/,/Source\:/p'