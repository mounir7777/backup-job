# backup.ps1 – erstellt ein Backup von "daten.txt" (Demo)

$quelle = "daten.txt"
$zielordner = "backup"
$dateiname = "backup_daten_$(Get-Date -Format yyyyMMdd_HHmmss).txt"

if (!(Test-Path $zielordner)) {
    New-Item -ItemType Directory -Path $zielordner
}

if (Test-Path $quelle) {
    Copy-Item $quelle -Destination "$zielordner\$dateiname"
    Write-Host "✅ Backup wurde erstellt: $zielordner\$dateiname"
} else {
    Write-Host "❌ Quelldatei 'daten.txt' wurde nicht gefunden."
}
