#!/usr/bin/env pwsh

$ErrorActionPreference = "Stop"

. $PSScriptRoot/.common-vars.ps1

# Make sure vars exist so we don't mess up paths
Get-Variable -Name modDir | Out-Null
Get-Variable -Name modName | Out-Null

try {
	Remove-Item -Force -Recurse -Path "$modDir/$modName"
	Remove-Item -Force -Path "$modDir/$modName.mod"
} catch [System.Management.Automation.ItemNotFoundException] { $null }
