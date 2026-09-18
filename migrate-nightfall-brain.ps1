# Run from the root of your cloned brain repository in PowerShell 7+.
# Example:
#   Set-ExecutionPolicy -Scope Process Bypass
#   .\migrate-nightfall-brain.ps1

$ErrorActionPreference = 'Stop'

$Root = '03-projects/Nightfall'
$Archive = Join-Path $Root '90-Archive/Legacy Structure'
$DateTag = '2026-09-17'

if (-not (Test-Path '.git')) {
    throw 'Run this script from the root of the cloned brain repository.'
}

if (-not (Test-Path $Root)) {
    throw "Missing $Root"
}

if (git status --porcelain) {
    throw 'Working tree is not clean. Commit or stash current changes first.'
}

$Directories = @(
    '00-MOC',
    '01-Canon/Cosmology',
    '01-Canon/Divinity',
    '01-Canon/Death & Afterlife',
    '02-World/Geography',
    '02-World/Regions',
    '02-World/Planning',
    '02-World/Peoples',
    '02-World/Cultures',
    '02-World/Factions',
    '02-World/History',
    '03-Systems/Magic',
    '03-Systems/Core',
    '03-Systems/Death',
    '04-Gameplay/Core Loops',
    '04-Gameplay/Progression',
    '04-Gameplay/Social Systems',
    '05-Design/Implementation',
    '05-Design/Templates',
    '06-Reference/Decisions',
    '06-Reference/Glossary',
    '06-Reference/Implementation',
    '06-Reference/Session Notes',
    '90-Archive/Legacy Structure'
)

foreach ($Directory in $Directories) {
    New-Item -ItemType Directory -Force -Path (Join-Path $Root $Directory) | Out-Null
}

Get-ChildItem -Path $Root -Filter '.gitkeep' -File -Recurse | Remove-Item -Force

function Get-SafeComponent([string]$Text) {
    return ($Text -replace '[ /]', '_' -replace '[^A-Za-z0-9_.-]', '_')
}

function Move-Tree([string]$Source, [string]$Destination) {
    if (-not (Test-Path $Source)) { return }

    $SourceLabel = Get-SafeComponent ($Source.Substring($Root.Length).TrimStart('/', '\'))
    $Files = @(Get-ChildItem -Path $Source -File -Recurse)

    foreach ($File in $Files) {
        $Relative = $File.FullName.Substring((Resolve-Path $Source).Path.Length).TrimStart('\', '/')
        $Target = Join-Path $Destination $Relative
        $TargetDirectory = Split-Path -Parent $Target
        New-Item -ItemType Directory -Force -Path $TargetDirectory | Out-Null

        if (Test-Path $Target) {
            $Archived = Join-Path $Archive (Join-Path $SourceLabel $Relative)
            $ArchiveDirectory = Split-Path -Parent $Archived
            New-Item -ItemType Directory -Force -Path $ArchiveDirectory | Out-Null
            if (Test-Path $Archived) {
                $Base = [System.IO.Path]::GetFileNameWithoutExtension($Archived)
                $Extension = [System.IO.Path]::GetExtension($Archived)
                $Archived = Join-Path $ArchiveDirectory "$Base ($DateTag)$Extension"
            }
            git mv -- $File.FullName $Archived
        } else {
            git mv -- $File.FullName $Target
        }
    }

    Get-ChildItem -Path $Source -Directory -Recurse |
        Sort-Object FullName -Descending |
        Where-Object { -not (Get-ChildItem -Path $_.FullName -Force) } |
        Remove-Item -Force

    if ((Test-Path $Source) -and -not (Get-ChildItem -Path $Source -Force)) {
        Remove-Item -Force $Source
    }
}

function Move-WorldRootFiles {
    $Source = Join-Path $Root '02-World'
    $Destination = Join-Path $Root '02-World/Regions'

    Get-ChildItem -Path $Source -File | ForEach-Object {
        $Target = Join-Path $Destination $_.Name
        if (Test-Path $Target) {
            $Archived = Join-Path $Archive (Join-Path '02-World-root' $_.Name)
            New-Item -ItemType Directory -Force -Path (Split-Path -Parent $Archived) | Out-Null
            git mv -- $_.FullName $Archived
        } else {
            git mv -- $_.FullName $Target
        }
    }
}

# Navigation and canon
Move-Tree (Join-Path $Root '00 Index') (Join-Path $Root '00-MOC/Legacy Index')
Move-Tree (Join-Path $Root '01 Cosmology') (Join-Path $Root '01-Canon/Cosmology')
Move-Tree (Join-Path $Root '01-Cosmology') (Join-Path $Root '01-Canon/Cosmology')

# World
Move-WorldRootFiles
Move-Tree (Join-Path $Root '02 Geography') (Join-Path $Root '02-World/Geography')
Move-Tree (Join-Path $Root '02-Geography') (Join-Path $Root '02-World/Planning')
Move-Tree (Join-Path $Root '05 Peoples') (Join-Path $Root '02-World/Peoples')
Move-Tree (Join-Path $Root '06 Cultures') (Join-Path $Root '02-World/Cultures')
Move-Tree (Join-Path $Root '07 Factions') (Join-Path $Root '02-World/Factions')
Move-Tree (Join-Path $Root '07-History') (Join-Path $Root '02-World/History')

# Canon divinity
Move-Tree (Join-Path $Root '03-Divinity') (Join-Path $Root '01-Canon/Divinity')
Move-Tree (Join-Path $Root '04 Gods') (Join-Path $Root '01-Canon/Divinity')

# Systems
Move-Tree (Join-Path $Root '03 Magic') (Join-Path $Root '03-Systems/Magic')
Move-Tree (Join-Path $Root '04-Magic') (Join-Path $Root '03-Systems/Magic')
Move-Tree (Join-Path $Root '05-Systems') (Join-Path $Root '03-Systems/Core')
Move-Tree (Join-Path $Root '06-Death') (Join-Path $Root '03-Systems/Death')

# Death lore is separate from mechanical death systems.
Move-Tree (Join-Path $Root '08 Death') (Join-Path $Root '01-Canon/Death & Afterlife')

# Gameplay, design, and reference
Move-Tree (Join-Path $Root '09 Gameplay') (Join-Path $Root '04-Gameplay/Core Loops')
Move-Tree (Join-Path $Root '99-Design') (Join-Path $Root '05-Design')
Move-Tree (Join-Path $Root '10 Reference') (Join-Path $Root '06-Reference')
Move-Tree (Join-Path $Root '10-Reference') (Join-Path $Root '06-Reference')

@'
---
type: archive-index
project: Nightfall
status: archived
---

# Legacy Structure Archive

These files were preserved during the one-shot Nightfall migration because a canonical destination file with the same path already existed. The active version is in the canonical project structure; this folder retains the alternate legacy version by original source.
'@ | Set-Content -Encoding utf8 (Join-Path $Archive 'README.md')

@'
# Nightfall

## Vault structure

- `00-MOC` — entry points, maps of content, and navigation
- `01-Canon` — setting truths, cosmology, divinity, and death lore
- `02-World` — geography, regions, peoples, cultures, factions, and history
- `03-Systems` — magic, progression, combat, and death mechanics
- `04-Gameplay` — player-facing loops and gameplay design
- `05-Design` — implementation plans, specs, and templates
- `06-Reference` — glossary, decisions, implementation notes, and sessions
- `90-Archive` — legacy copies retained when a migration conflict occurred

Start at [[00-MOC/Nightfall Home]].
'@ | Set-Content -Encoding utf8 (Join-Path $Root 'README.md')

$LegacyFolders = @(
    '00 Index', '01 Cosmology', '01-Cosmology', '02 Geography', '02-Geography',
    '03 Magic', '03-Divinity', '04 Gods', '04-Magic', '05 Peoples', '05-Systems',
    '06 Cultures', '06-Death', '07 Factions', '07-History', '08 Death', '09 Gameplay',
    '10 Reference', '10-Reference', '99-Design'
)

foreach ($LegacyFolder in $LegacyFolders) {
    $Path = Join-Path $Root $LegacyFolder
    if (Test-Path $Path) {
        $Remaining = @(Get-ChildItem -Path $Path -File -Recurse)
        if ($Remaining.Count -gt 0) {
            throw "Migration incomplete: files remain in $Path"
        }
        Remove-Item -Path $Path -Recurse -Force
    }
}

git add -A
Write-Host ''
Write-Host 'Migration staged. Review it with:' -ForegroundColor Cyan
Write-Host '  git status' -ForegroundColor Yellow
Write-Host '  git diff --cached --stat' -ForegroundColor Yellow
Write-Host ''
$Answer = Read-Host 'Create the migration commit? [y/N]'
if ($Answer -match '^[Yy]$') {
    git commit -m 'chore(nightfall): fully consolidate vault structure'
    Write-Host ''
    Write-Host 'Done. Push with:' -ForegroundColor Green
    Write-Host '  git push origin HEAD' -ForegroundColor Yellow
} else {
    Write-Host 'No commit created. The migration remains staged for review.' -ForegroundColor Yellow
}
