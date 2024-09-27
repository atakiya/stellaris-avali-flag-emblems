#!/usr/bin/env nu

run-external "pwsh" "-NoProfile" "-File" $"($env.FILE_PWD)/deploy-mod.ps1"
