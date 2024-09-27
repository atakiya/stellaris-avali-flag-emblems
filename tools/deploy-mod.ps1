#!/usr/bin/env pwsh

$ErrorActionPreference = "Stop"

. $PSScriptRoot/.common-vars.ps1

# Make sure vars exist so we don't mess up paths
Get-Variable -Name modDir
Get-Variable -Name modName

New-Item -Force -ItemType SymbolicLink -Path "$modDir" -Name "$modName" -Value "$PWD"

Copy-Item -Force -Path "$PWD/descriptor.mod" -Destination "$modDir/$modName.mod"
