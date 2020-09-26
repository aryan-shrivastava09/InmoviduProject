$rgname1 = "firstyear-rg-01"
$rgname2 = "secondyear-rg-01"
$rgname3 = "thirdyear-rg-01"
$rgname4 = "fourthyear-rg-01"

#Resource groups creation
New-AzResourceGroup -Name $rgname1 -Location "westeurope" -Force
New-AzResourceGroup -Name $rgname2 -Location "westeurope" -Force
New-AzResourceGroup -Name $rgname3 -Location "westeurope" -Force
New-AzResourceGroup -Name $rgname4 -Location "westeurope" -Force

#first year Deploments.
New-AzResourceGroupDeployment `
-Name "FirstYearDeploment" `
-ResourceGroupName $rgname1 `
-TemplateFile "firstyear-rg-01.json"
#VMs have been deployed through a seperate json file, so as to keep the characters in a file within limit.
New-AzResourceGroupDeployment `
-Name "FirstYearVMDeployment"
-ResourceGroupName $rgname1 `
-TemplateFile "firstyearVMs.json"

#second year Deploments.
New-AzResourceGroupDeployment `
-Name "SecondYearDeploment" `
-ResourceGroupName $rgname2 `
-TemplateFile "secondyear-rg-01.json"
#VMs have been deployed through a seperate json file, so as to keep the characters in a file within limit.
New-AzResourceGroupDeployment `
-Name "SecondYearVMDeployment"
-ResourceGroupName $rgname2 `
-TemplateFile "secondyearVMs.json"

#third year Deploments.
New-AzResourceGroupDeployment `
-Name "ThirdYearDeploment" `
-ResourceGroupName $rgname3 `
-TemplateFile "thirdear-rg-01.json"
#VMs have been deployed through a seperate json file, so as to keep the characters in a file within limit.
New-AzResourceGroupDeployment `
-Name "ThirdYearVMDeployment"
-ResourceGroupName $rgname3 `
-TemplateFile "thirdyearVMs.json"

#fourth year Deploments.
New-AzResourceGroupDeployment `
-Name "FourthYearDeploment" `
-ResourceGroupName $rgname4 `
-TemplateFile "fourthyear-rg-01.json"
#VMs have been deployed through a seperate json file, so as to keep the characters in a file within limit.
New-AzResourceGroupDeployment `
-Name "FourthYearVMDeployment"
-ResourceGroupName $rgname4 `
-TemplateFile "fourthyearVMs.json"

#Peerings
$vnet1 = Get-AzVirtualNetwork -Name "firstyear-vn-01" -ResourceGroupName $rgname1
$vnet2 = Get-AzVirtualNetwork -Name "secondyear-vn-01" -ResourceGroupName $rgname2
$vnet3 = Get-AzVirtualNetwork -Name "thirdyear-vn-01" -ResourceGroupName $rgname3
$vnet4 = Get-AzVirtualNetwork -Name "fourthyear-vn-01" -ResourceGroupName $rgname4

Add-AzVirtualNetworkPeering -Name "peer-12" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet2.Id -AllowForwardedTraffic
Add-AzVirtualNetworkPeering -Name "peer-21" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet1.Id -AllowForwardedTraffic
Add-AzVirtualNetworkPeering -Name "peer-23" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet3.Id -AllowForwardedTraffic
Add-AzVirtualNetworkPeering -Name "peer-32" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet2.Id -AllowForwardedTraffic
Add-AzVirtualNetworkPeering -Name "peer-34" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet4.Id -AllowForwardedTraffic
Add-AzVirtualNetworkPeering -Name "peer-43" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet3.Id -AllowForwardedTraffic


