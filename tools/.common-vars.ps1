#!/usr/bin/env pwsh

$modMetaPath = "$PWD/descriptor.mod"

if (-not [System.IO.File]::Exists($modMetaPath)) {
	Write-Error "Could not find a descriptor.mod file in the current directory"
	exit 1
}

$modDir = "$([Environment]::GetFolderPath("MyDocuments"))/Paradox Interactive/Stellaris/mod/"
(Select-String -Path "$modMetaPath" -Pattern "path" -SimpleMatch) -match 'path = "mod/(?<modname>.+?)"' | Out-Null
$modName = $matches.modname
