#
# trafficmanager.ps1
#




#$profile = New-AzureRmTrafficManagerProfile -Name TMgvdbProfile -ResourceGroupName itvalue -TrafficRoutingMethod Performance -RelativeDnsName gregorvandenberg -Ttl 30 -MonitorProtocol HTTP -MonitorPort 80 -MonitorPath "/"

<#
//change in example the TTL to 300
#>
$profile = Get-AzureRmTrafficManagerProfile -Name TMgvdbProfile -ResourceGroupName itvalue
$profile.Ttl = 300
Set-AzureRmTrafficManagerProfile -TrafficManagerProfile $profile

