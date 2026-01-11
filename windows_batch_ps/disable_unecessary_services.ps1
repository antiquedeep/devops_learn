$services = @(	
    "Icssvc"
	"MapsBroker"
	"CertPropSvc"
	"Wisvc"
	"WpcMonSvc"
	"StiSvc"
	"XblGameSave"
	"DiagTrack"
    "SysMain"
)
foreach ($service in $services) {
    # echo "Trying to disable $service"
	# Get-service -Name $service | Set-Service -Status Stopped
    # Get-service -Name $service | Set-Service -StartupType disable
	Get-service -Name $service    
}