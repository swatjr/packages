
$certPath = ".\domain.cer"
$store = "Cert:\LocalMachine\CA"

Import-Certificate -FilePath $certPath -CertStoreLocation $store
sleep 5
Remove-Item -Path ".\domain.cer"
