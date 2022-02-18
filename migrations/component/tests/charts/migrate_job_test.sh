#!/usr/bin/env bash
$CZ helm template | sed -n '/migrate_job\.yaml/,/Source\:/p'