$path = "C:\certs"

if (-not (Test-Path $path)){
New-Item -Path $path -ItemType Directory -Force
$location = Get-Location

Copy-Item "$location\domain.cer" -Destination "$path"
$certPath = "$path\domain.cer"
$store = "Cert:\LocalMachine\Root"

Import-Certificate -FilePath $certPath -CertStoreLocation $store
} 
else{

$location = Get-Location

Copy-Item "$location\domain.cer" -Destination "$path"
$certPath = "$path\domain.cer"
$store = "Cert:\LocalMachine\Root"

Import-Certificate -FilePath $certPath -CertStoreLocation $store
}



