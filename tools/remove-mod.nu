#!/usr/bin/env nu

run-external "pwsh" "-NoProfile" "-File" $"($env.FILE_PWD)/remove-mod.ps1"
