$root = (Get-Item -Path "../" -Verbose).FullName
$scripts = (Get-Item -Path "./" -Verbose).FullName
$output = Join-Path $root "build"

$isLinuxSubsystem = Test-Path -Path '/mnt/c'
$docker = 'docker'
$dockerCompose = 'docker-compose';
if ($IsWindows -or $isLinuxSubsystem) {
    $docker = 'docker.exe'
    $dockerCompose = 'docker-compose.exe'
}

Set-Location $root

Write-Host "Removing Existing Containers" -ForegroundColor Cyan
& $dockerCompose -f docker-compose.yml rm --force

Write-Host "Building Containers" -ForegroundColor Cyan
& $dockerCompose -f docker-compose.yml build --no-cache

Write-Host "Deploying Containers" -ForegroundColor Cyan
& $dockerCompose -f docker-compose.yml up