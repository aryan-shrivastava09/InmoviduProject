#Resource group names
$rgname1 = "firstyear-rg-01"
$rgname2 = "secondyear-rg-01"
$rgname3 = "thirdyear-rg-01"
$rgname4 = "fourthyear-rg-01"
#Location
$location = "westeurope"
#Rescource Group Creation
New-AzResourceGroup -Name $rgname1 -Location $location
New-AzResourceGroup -Name $rgname2 -Location $location
New-AzResourceGroup -Name $rgname3 -Location $location
New-AzResourceGroup -Name $rgname4 -Location $location
#NSG Names
$nsgname1 = "firstyear-nsg-01"
$nsgname2 = "secondyear-nsg-01"
$nsgname3 = "thirdyear-nsg-rg-01"
$nsgname4 = "fourthyear-nsg-rg-01"
#NSGs Creation
New-AzNetworkSecurityGroup -Name $nsgname1 -ResourceGroupName $rgname1 -Location $location
New-AzNetworkSecurityGroup -Name $nsgname2 -ResourceGroupName $rgname2 -Location $location
New-AzNetworkSecurityGroup -Name $nsgname3 -ResourceGroupName $rgname3 -Location $location
New-AzNetworkSecurityGroup -Name $nsgname4 -ResourceGroupName $rgname4 -Location $location
#To get network security group
$nsg1 = Get-AzNetworkSecurityGroup -Name $nsgname1 -ResourceGroupName $rgname1
$nsg2 = Get-AzNetworkSecurityGroup -Name $nsgname2 -ResourceGroupName $rgname2
$nsg3 = Get-AzNetworkSecurityGroup -Name $nsgname3 -ResourceGroupName $rgname3
$nsg4 = Get-AzNetworkSecurityGroup -Name $nsgname4 -ResourceGroupName $rgname4

#to create a rule
$nsg1 | Add-AzNetworkSecurityRuleConfig -Name "InboundRule-1" -Description "To restrict inbound traffic" -Protocol * -SourcePortRange "3389" -Access Allow -Priority 1000 -Direction Inbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg1 | Set-AzNetworkSecurityGroup
$nsg1 | Add-AzNetworkSecurityRuleConfig -Name "OutboundRule-1" -Description "To restrict outbound traffic" -Protocol * -SourcePortRange "3389" -Access Allow -Priority 1001 -Direction Outbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg1 | Set-AzNetworkSecurityGroup
$nsg1 | Add-AzNetworkSecurityRuleConfig -Name "InboundRule-2" -Description "To restrict inbound traffic" -Protocol * -SourcePortRange "22" -Access Allow -Priority 1002 -Direction Inbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg1 | Set-AzNetworkSecurityGroup
$nsg1 | Add-AzNetworkSecurityRuleConfig -Name "outboundRule-2" -Description "To restrict outbound traffic" -Protocol * -SourcePortRange "22" -Access Allow -Priority 1003 -Direction Outbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg1 | Set-AzNetworkSecurityGroup

$nsg2 | Add-AzNetworkSecurityRuleConfig -Name "InboundRule-1" -Description "To restrict inbound traffic" -Protocol * -SourcePortRange "3389" -Access Allow -Priority 1000 -Direction Inbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg2 | Set-AzNetworkSecurityGroup
$nsg2 | Add-AzNetworkSecurityRuleConfig -Name "OutboundRule-1" -Description "To restrict outbound traffic" -Protocol * -SourcePortRange "3389" -Access Allow -Priority 1001 -Direction Outbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg2 | Set-AzNetworkSecurityGroup
$nsg2 | Add-AzNetworkSecurityRuleConfig -Name "InboundRule-2" -Description "To restrict inbound traffic" -Protocol * -SourcePortRange "22" -Access Allow -Priority 1002 -Direction Inbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg2 | Set-AzNetworkSecurityGroup
$nsg2 | Add-AzNetworkSecurityRuleConfig -Name "outboundRule-2" -Description "To restrict outbound traffic" -Protocol * -SourcePortRange "22" -Access Allow -Priority 1003 -Direction Outbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg2 | Set-AzNetworkSecurityGroup

$nsg3 | Add-AzNetworkSecurityRuleConfig -Name "InboundRule-1" -Description "To restrict inbound traffic" -Protocol * -SourcePortRange "3389" -Access Allow -Priority 1000 -Direction Inbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg3 | Set-AzNetworkSecurityGroup
$nsg3 | Add-AzNetworkSecurityRuleConfig -Name "OutboundRule-1" -Description "To restrict outbound traffic" -Protocol * -SourcePortRange "3389" -Access Allow -Priority 1001 -Direction Outbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg3 | Set-AzNetworkSecurityGroup
$nsg3 | Add-AzNetworkSecurityRuleConfig -Name "InboundRule-2" -Description "To restrict inbound traffic" -Protocol * -SourcePortRange "22" -Access Allow -Priority 1002 -Direction Inbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg3 | Set-AzNetworkSecurityGroup
$nsg3 | Add-AzNetworkSecurityRuleConfig -Name "outboundRule-2" -Description "To restrict outbound traffic" -Protocol * -SourcePortRange "22" -Access Allow -Priority 1003 -Direction Outbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg3 | Set-AzNetworkSecurityGroup

$nsg4 | Add-AzNetworkSecurityRuleConfig -Name "InboundRule-1" -Description "To restrict inbound traffic" -Protocol * -SourcePortRange "3389" -Access Allow -Priority 1000 -Direction Inbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg4 | Set-AzNetworkSecurityGroup
$nsg4 | Add-AzNetworkSecurityRuleConfig -Name "OutboundRule-1" -Description "To restrict outbound traffic" -Protocol * -SourcePortRange "3389" -Access Allow -Priority 1001 -Direction Outbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg4 | Set-AzNetworkSecurityGroup
$nsg4 | Add-AzNetworkSecurityRuleConfig -Name "InboundRule-2" -Description "To restrict inbound traffic" -Protocol * -SourcePortRange "22" -Access Allow -Priority 1002 -Direction Inbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg4 | Set-AzNetworkSecurityGroup
$nsg4 | Add-AzNetworkSecurityRuleConfig -Name "outboundRule-2" -Description "To restrict outbound traffic" -Protocol * -SourcePortRange "22" -Access Allow -Priority 1003 -Direction Outbound -DestinationPortRange 8080 -SourceAddressPrefix "*" -DestinationAddressPrefix *
$nsg4 | Set-AzNetworkSecurityGroup

#Subnets
$subnet1config1 = New-AzVirtualNetworkSubnetConfig -Name "ec-lab-sn-01" -AddressPrefix "10.0.1.0/26" -NetworkSecurityGroup $nsg1
$subnet1config2 = New-AzVirtualNetworkSubnetConfig -Name "cs-lab-sn-01" -AddressPrefix "10.0.2.0/26" -NetworkSecurityGroup $nsg1
$subnet1config3 = New-AzVirtualNetworkSubnetConfig -Name "it-lab-sn-01" -AddressPrefix "10.0.3.0/26" -NetworkSecurityGroup $nsg1
$subnet1config4 = New-AzVirtualNetworkSubnetConfig -Name "mech-lab-sn-01" -AddressPrefix "10.0.4.0/26" -NetworkSecurityGroup $nsg1
$subnet2config1 = New-AzVirtualNetworkSubnetConfig -Name "ec-lab-sn-01" -AddressPrefix "20.0.1.0/26" -NetworkSecurityGroup $nsg2
$subnet2config2 = New-AzVirtualNetworkSubnetConfig -Name "cs-lab-sn-01" -AddressPrefix "20.0.2.0/26" -NetworkSecurityGroup $nsg2
$subnet2config3 = New-AzVirtualNetworkSubnetConfig -Name "it-lab-sn-01" -AddressPrefix "20.0.3.0/26" -NetworkSecurityGroup $nsg2
$subnet2config4 = New-AzVirtualNetworkSubnetConfig -Name "mech-lab-sn-01" -AddressPrefix "20.0.4.0/26" -NetworkSecurityGroup $nsg2
$subnet3config1 = New-AzVirtualNetworkSubnetConfig -Name "ec-lab-sn-01" -AddressPrefix "30.0.1.0/26" -NetworkSecurityGroup $nsg3
$subnet3config2 = New-AzVirtualNetworkSubnetConfig -Name "cs-lab-sn-01" -AddressPrefix "30.0.2.0/26" -NetworkSecurityGroup $nsg3
$subnet3config3 = New-AzVirtualNetworkSubnetConfig -Name "it-lab-sn-01" -AddressPrefix "30.0.3.0/26" -NetworkSecurityGroup $nsg3
$subnet3config4 = New-AzVirtualNetworkSubnetConfig -Name "mech-lab-sn-01" -AddressPrefix "30.0.4.0/26" -NetworkSecurityGroup $nsg3
$subnet4config1 = New-AzVirtualNetworkSubnetConfig -Name "ec-lab-sn-01" -AddressPrefix "40.0.1.0/26" -NetworkSecurityGroup $nsg4
$subnet4config2 = New-AzVirtualNetworkSubnetConfig -Name "cs-lab-sn-01" -AddressPrefix "40.0.2.0/26" -NetworkSecurityGroup $nsg4
$subnet4config3 = New-AzVirtualNetworkSubnetConfig -Name "it-lab-sn-01" -AddressPrefix "40.0.3.0/26" -NetworkSecurityGroup $nsg4
$subnet4config4 = New-AzVirtualNetworkSubnetConfig -Name "mech-lab-sn-01" -AddressPrefix "40.0.4.0/26" -NetworkSecurityGroup $nsg4

#VNs
$vnet1 = New-AzVirtualNetwork -Name "firstyear-vn-01" -ResourceGroupName $rgname1 -Location $location -AddressPrefix "10.0.0.0/20" -Subnet $subnet1config1,$subnet1config2,$subnet1config3,$subnet1config4 
$vnet2 = New-AzVirtualNetwork -Name "secondyear-vn-01" -ResourceGroupName $rgname2 -Location $location -AddressPrefix "20.0.0.0/20" -Subnet $subnet2config1,$subnet2config2,$subnet2config3,$subnet2config4
$vnet3 = New-AzVirtualNetwork -Name "thirdyear-vn-01" -ResourceGroupName $rgname3 -Location $location -AddressPrefix "30.0.0.0/20" -Subnet $subnet3config1,$subnet3config2,$subnet3config3,$subnet3config4
$vnet4 = New-AzVirtualNetwork -Name "fourthyear-vn-01" -ResourceGroupName $rgname4 -Location $location -AddressPrefix "40.0.0.0/20" -Subnet $subnet4config1,$subnet4config2,$subnet4config3,$subnet4config4

#peering
Add-AzVirtualNetworkPeering -Name "peer-12" -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet2.Id -AllowForwardedTraffic
Add-AzVirtualNetworkPeering -Name "peer-21" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet1.Id -AllowForwardedTraffic
Add-AzVirtualNetworkPeering -Name "peer-23" -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet3.Id -AllowForwardedTraffic
Add-AzVirtualNetworkPeering -Name "peer-32" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet2.Id -AllowForwardedTraffic
Add-AzVirtualNetworkPeering -Name "peer-34" -VirtualNetwork $vnet3 -RemoteVirtualNetworkId $vnet4.Id -AllowForwardedTraffic
Add-AzVirtualNetworkPeering -Name "peer-43" -VirtualNetwork $vnet4 -RemoteVirtualNetworkId $vnet3.Id -AllowForwardedTraffic

#PIP
$server1pip1 = New-AzPublicIpAddress -ResourceGroupName $rgname1 -name "W-firstyear-ec-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server1pip2 = New-AzPublicIpAddress -ResourceGroupName $rgname1 -name "L-firstyear-ec-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server1pip3 = New-AzPublicIpAddress -ResourceGroupName $rgname1 -name "W-firstyear-cs-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server1pip4 = New-AzPublicIpAddress -ResourceGroupName $rgname1 -name "L-firstyear-cs-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server1pip5 = New-AzPublicIpAddress -ResourceGroupName $rgname1 -name "W-firstyear-it-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server1pip6 = New-AzPublicIpAddress -ResourceGroupName $rgname1 -name "L-firstyear-it-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server1pip7 = New-AzPublicIpAddress -ResourceGroupName $rgname1 -name "W-firstyear-mech-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server1pip8 = New-AzPublicIpAddress -ResourceGroupName $rgname1 -name "L-firstyear-mech-vm-01-pip-01" -AllocationMethod Dynamic -Location $location

$server2pip1 = New-AzPublicIpAddress -ResourceGroupName $rgname2 -name "W-secondyear-ec-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server2pip2 = New-AzPublicIpAddress -ResourceGroupName $rgname2 -name "L-secondyear-ec-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server2pip3 = New-AzPublicIpAddress -ResourceGroupName $rgname2 -name "W-sedocdyear-cs-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server2pip4 = New-AzPublicIpAddress -ResourceGroupName $rgname2 -name "L-secondyear-cs-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server2pip5 = New-AzPublicIpAddress -ResourceGroupName $rgname2 -name "W-secondyear-it-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server2pip6 = New-AzPublicIpAddress -ResourceGroupName $rgname2 -name "L-secondyear-it-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server2pip7 = New-AzPublicIpAddress -ResourceGroupName $rgname2 -name "W-secondyear-mech-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server2pip8 = New-AzPublicIpAddress -ResourceGroupName $rgname2 -name "L-secondyear-mech-vm-01-pip-01" -AllocationMethod Dynamic -Location $location

$server3pip1 = New-AzPublicIpAddress -ResourceGroupName $rgname3 -name "W-thirdyear-ec-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server3pip2 = New-AzPublicIpAddress -ResourceGroupName $rgname3 -name "L-thirdyear-ec-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server3pip3 = New-AzPublicIpAddress -ResourceGroupName $rgname3 -name "W-thirdyear-cs-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server3pip4 = New-AzPublicIpAddress -ResourceGroupName $rgname3 -name "L-thirdyear-cs-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server3pip5 = New-AzPublicIpAddress -ResourceGroupName $rgname3 -name "W-thirdyear-it-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server3pip6 = New-AzPublicIpAddress -ResourceGroupName $rgname3 -name "L-thirdyear-it-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server3pip7 = New-AzPublicIpAddress -ResourceGroupName $rgname3 -name "W-thirdyear-mech-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server3pip8 = New-AzPublicIpAddress -ResourceGroupName $rgname3 -name "L-thirdyear-mech-vm-01-pip-01" -AllocationMethod Dynamic -Location $location

$server4pip1 = New-AzPublicIpAddress -ResourceGroupName $rgname4 -name "W-fourthyear-ec-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server4pip2 = New-AzPublicIpAddress -ResourceGroupName $rgname4 -name "L-fourthyear-ec-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server4pip3 = New-AzPublicIpAddress -ResourceGroupName $rgname4 -name "W-fourthyear-cs-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server4pip4 = New-AzPublicIpAddress -ResourceGroupName $rgname4 -name "L-fourthyear-cs-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server4pip5 = New-AzPublicIpAddress -ResourceGroupName $rgname4 -name "W-fourthyear-it-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server4pip6 = New-AzPublicIpAddress -ResourceGroupName $rgname4 -name "L-fourthyear-it-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server4pip7 = New-AzPublicIpAddress -ResourceGroupName $rgname4 -name "W-fourthyear-mech-vm-01-pip-01" -AllocationMethod Dynamic -Location $location
$server4pip8 = New-AzPublicIpAddress -ResourceGroupName $rgname4 -name "L-fourthyear-mech-vm-01-pip-01" -AllocationMethod Dynamic -Location $location

#NIC
$server1nic1 = New-AzNetworkInterface -ResourceGroupName $rgname1 -name "W-firstyear-ec-vm-01-nic-01" -Location $location -Subnet $vnet1.Subnets[0] -PublicIpAddress $server1pip1 -PrivateIpAddress "10.0.1.5" -NetworkSecurityGroup $nsg1
$server1nic2 = New-AzNetworkInterface -ResourceGroupName $rgname1 -name "L-firstyear-ec-vm-01-nic-01" -Location $location -Subnet $vnet1.Subnets[0] -PublicIpAddress $server1pip2 -PrivateIpAddress "10.0.1.6" -NetworkSecurityGroup $nsg1
$server1nic3 = New-AzNetworkInterface -ResourceGroupName $rgname1 -name "W-firstyear-cs-vm-01-nic-01" -Location $location -Subnet $vnet1.Subnets[1] -PublicIpAddress $server1pip3 -PrivateIpAddress "10.0.2.7" -NetworkSecurityGroup $nsg1
$server1nic4 = New-AzNetworkInterface -ResourceGroupName $rgname1 -name "L-firstyear-cs-vm-01-nic-01" -Location $location -Subnet $vnet1.Subnets[1] -PublicIpAddress $server1pip4 -PrivateIpAddress "10.0.2.8" -NetworkSecurityGroup $nsg1
$server1nic5 = New-AzNetworkInterface -ResourceGroupName $rgname1 -name "W-firstyear-it-vm-01-nic-01" -Location $location -Subnet $vnet1.Subnets[2] -PublicIpAddress $server1pip5 -PrivateIpAddress "10.0.3.9" -NetworkSecurityGroup $nsg1
$server1nic6 = New-AzNetworkInterface -ResourceGroupName $rgname1 -name "L-firstyear-it-vm-01-nic-01" -Location $location -Subnet $vnet1.Subnets[2] -PublicIpAddress $server1pip6 -PrivateIpAddress "10.0.3.10" -NetworkSecurityGroup $nsg1
$server1nic7 = New-AzNetworkInterface -ResourceGroupName $rgname1 -name "W-firstyear-mech-vm-01-nic-01" -Location $location -Subnet $vnet1.Subnets[3] -PublicIpAddress $server1pip7 -PrivateIpAddress "10.0.4.11" -NetworkSecurityGroup $nsg1
$server1nic8 = New-AzNetworkInterface -ResourceGroupName $rgname1 -name "L-firstyear-mech-vm-01-nic-01" -Location $location -Subnet $vnet1.Subnets[3] -PublicIpAddress $server1pip8 -PrivateIpAddress "10.0.4.12" -NetworkSecurityGroup $nsg1

$server2nic1 = New-AzNetworkInterface -ResourceGroupName $rgname2 -name "W-secondyear-ec-vm-01-nic-01" -Location $location -Subnet $vnet2.Subnets[0] -PublicIpAddress $server2pip1 -PrivateIpAddress "20.0.1.5" -NetworkSecurityGroup $nsg2
$server2nic2 = New-AzNetworkInterface -ResourceGroupName $rgname2 -name "L-secondyear-ec-vm-01-nic-01" -Location $location -Subnet $vnet2.Subnets[0] -PublicIpAddress $server2pip2 -PrivateIpAddress "20.0.1.6" -NetworkSecurityGroup $nsg2
$server2nic3 = New-AzNetworkInterface -ResourceGroupName $rgname2 -name "W-secondyear-cs-vm-01-nic-01" -Location $location -Subnet $vnet2.Subnets[1] -PublicIpAddress $server2pip3 -PrivateIpAddress "20.0.2.7" -NetworkSecurityGroup $nsg2
$server2nic4 = New-AzNetworkInterface -ResourceGroupName $rgname2 -name "L-secondyear-cs-vm-01-nic-01" -Location $location -Subnet $vnet2.Subnets[1] -PublicIpAddress $server2pip4 -PrivateIpAddress "20.0.2.8" -NetworkSecurityGroup $nsg2
$server2nic5 = New-AzNetworkInterface -ResourceGroupName $rgname2 -name "W-secondyear-it-vm-01-nic-01" -Location $location -Subnet $vnet2.Subnets[2] -PublicIpAddress $server2pip5 -PrivateIpAddress "20.0.3.9" -NetworkSecurityGroup $nsg2
$server2nic6 = New-AzNetworkInterface -ResourceGroupName $rgname2 -name "L-secondyear-it-vm-01-nic-01" -Location $location -Subnet $vnet2.Subnets[2] -PublicIpAddress $server2pip6 -PrivateIpAddress "20.0.3.10" -NetworkSecurityGroup $nsg2
$server2nic7 = New-AzNetworkInterface -ResourceGroupName $rgname2 -name "W-secondyear-mech-vm-01-nic-01" -Location $location -Subnet $vnet2.Subnets[3] -PublicIpAddress $server2pip7 -PrivateIpAddress "20.0.4.11" -NetworkSecurityGroup $nsg2
$server2nic8 = New-AzNetworkInterface -ResourceGroupName $rgname2 -name "L-secondyear-mech-vm-01-nic-01" -Location $location -Subnet $vnet2.Subnets[3] -PublicIpAddress $server2pip8 -PrivateIpAddress "20.0.4.12" -NetworkSecurityGroup $nsg2

$server3nic1 = New-AzNetworkInterface -ResourceGroupName $rgname3 -name "W-thirdyear-ec-vm-01-nic-01" -Location $location -Subnet $vnet3.Subnets[0] -PublicIpAddress $server3pip1 -PrivateIpAddress "30.0.1.5" -NetworkSecurityGroup $nsg3
$server3nic2 = New-AzNetworkInterface -ResourceGroupName $rgname3 -name "L-thirdyear-ec-vm-01-nic-01" -Location $location -Subnet $vnet3.Subnets[0] -PublicIpAddress $server3pip2 -PrivateIpAddress "30.0.1.6" -NetworkSecurityGroup $nsg3
$server3nic3 = New-AzNetworkInterface -ResourceGroupName $rgname3 -name "W-thirdyear-cs-vm-01-nic-01" -Location $location -Subnet $vnet3.Subnets[1] -PublicIpAddress $server3pip3 -PrivateIpAddress "30.0.2.7" -NetworkSecurityGroup $nsg3
$server3nic4 = New-AzNetworkInterface -ResourceGroupName $rgname3 -name "L-thirdyear-cs-vm-01-nic-01" -Location $location -Subnet $vnet3.Subnets[1] -PublicIpAddress $server3pip4 -PrivateIpAddress "30.0.2.8" -NetworkSecurityGroup $nsg3
$server3nic5 = New-AzNetworkInterface -ResourceGroupName $rgname3 -name "W-thirdyear-it-vm-01-nic-01" -Location $location -Subnet $vnet3.Subnets[2] -PublicIpAddress $server3pip5 -PrivateIpAddress "30.0.3.9" -NetworkSecurityGroup $nsg3
$server3nic6 = New-AzNetworkInterface -ResourceGroupName $rgname3 -name "L-thirdyear-it-vm-01-nic-01" -Location $location -Subnet $vnet3.Subnets[2] -PublicIpAddress $server3pip6 -PrivateIpAddress "30.0.3.10" -NetworkSecurityGroup $nsg3
$server3nic7 = New-AzNetworkInterface -ResourceGroupName $rgname3 -name "W-thirdyear-mech-vm-01-nic-01" -Location $location -Subnet $vnet3.Subnets[3] -PublicIpAddress $server3pip7 -PrivateIpAddress "30.0.4.11" -NetworkSecurityGroup $nsg3
$server3nic8 = New-AzNetworkInterface -ResourceGroupName $rgname3 -name "L-thirdyear-mech-vm-01-nic-01" -Location $location -Subnet $vnet3.Subnets[3] -PublicIpAddress $server3pip8 -PrivateIpAddress "30.0.4.12" -NetworkSecurityGroup $nsg3

$server4nic1 = New-AzNetworkInterface -ResourceGroupName $rgname4 -name "W-fourthyear-ec-vm-01-nic-01" -Location $location -Subnet $vnet4.Subnets[0] -PublicIpAddress $server4pip1 -PrivateIpAddress "40.0.1.5" -NetworkSecurityGroup $nsg4
$server4nic2 = New-AzNetworkInterface -ResourceGroupName $rgname4 -name "L-fourthyear-ec-vm-01-nic-01" -Location $location -Subnet $vnet4.Subnets[0] -PublicIpAddress $server4pip2 -PrivateIpAddress "40.0.1.6" -NetworkSecurityGroup $nsg4
$server4nic3 = New-AzNetworkInterface -ResourceGroupName $rgname4 -name "W-fourthyear-cs-vm-01-nic-01" -Location $location -Subnet $vnet4.Subnets[1] -PublicIpAddress $server4pip3 -PrivateIpAddress "40.0.2.7" -NetworkSecurityGroup $nsg4
$server4nic4 = New-AzNetworkInterface -ResourceGroupName $rgname4 -name "L-fourthyear-cs-vm-01-nic-01" -Location $location -Subnet $vnet4.Subnets[1] -PublicIpAddress $server4pip4 -PrivateIpAddress "40.0.2.8" -NetworkSecurityGroup $nsg4
$server4nic5 = New-AzNetworkInterface -ResourceGroupName $rgname4 -name "W-fourthyear-it-vm-01-nic-01" -Location $location -Subnet $vnet4.Subnets[2] -PublicIpAddress $server4pip5 -PrivateIpAddress "40.0.3.9" -NetworkSecurityGroup $nsg4
$server4nic6 = New-AzNetworkInterface -ResourceGroupName $rgname4 -name "L-fourthyear-it-vm-01-nic-01" -Location $location -Subnet $vnet4.Subnets[2] -PublicIpAddress $server4pip6 -PrivateIpAddress "40.0.3.10" -NetworkSecurityGroup $nsg4
$server4nic7 = New-AzNetworkInterface -ResourceGroupName $rgname4 -name "W-fourthyear-mech-vm-01-nic-01" -Location $location -Subnet $vnet4.Subnets[3] -PublicIpAddress $server4pip7 -PrivateIpAddress "40.0.4.11" -NetworkSecurityGroup $nsg4
$server4nic8 = New-AzNetworkInterface -ResourceGroupName $rgname4 -name "L-fourthyear-mech-vm-01-nic-01" -Location $location -Subnet $vnet4.Subnets[3] -PublicIpAddress $server4pip8 -PrivateIpAddress "40.0.4.12" -NetworkSecurityGroup $nsg4

#Credentials
$servercred = Get-Credential -Message "Enter Your Credentials for Azure VM" 

#storage Account
$saname = "mnitsa"
New-AzStorageAccount -ResourceGroupName $rgname1 -Name $saname -SkuName "Standard_RAGRS" -Location $location

#VMs
$server1vmconfig1 = New-AzVMConfig -VMName "W-firstyear-ec-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-firstyear-ec-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname1  | Add-AzVMNetworkInterface -Id $server1nic1.Id | Add-AzVMDataDisk -Name "W-firstyear-ec-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server1vmconfig2 = New-AzVMConfig -VMName "L-firstyear-ec-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-firstyear-ec-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname1  | Add-AzVMNetworkInterface -Id $server1nic2.Id | Add-AzVMDataDisk -Name "L-firstyear-ec-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server1vmconfig3 = New-AzVMConfig -VMName "W-firstyear-cs-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-firstyear-cs-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname1  | Add-AzVMNetworkInterface -Id $server1nic3.Id | Add-AzVMDataDisk -Name "W-firstyear-cs--datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server1vmconfig4 = New-AzVMConfig -VMName "L-firstyear-cs-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-firstyear-cs-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname1  | Add-AzVMNetworkInterface -Id $server1nic4.Id | Add-AzVMDataDisk -Name "L-firstyear-cs-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server1vmconfig5 = New-AzVMConfig -VMName "W-firstyear-it-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-firstyear-it-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname1  | Add-AzVMNetworkInterface -Id $server1nic5.Id | Add-AzVMDataDisk -Name "W-firstyear-it-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server1vmconfig6 = New-AzVMConfig -VMName "L-firstyear-it-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-firstyear-it-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname1  | Add-AzVMNetworkInterface -Id $server1nic6.Id | Add-AzVMDataDisk -Name "L-firstyear-it-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server1vmconfig7 = New-AzVMConfig -VMName "W-firstyear-mech-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-firstyear-mech-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname1  | Add-AzVMNetworkInterface -Id $server1nic7.Id | Add-AzVMDataDisk -Name "W-firstyear-mech-vm-datadisk-01" -DiskSizeInGB 80 -CreateOption "Empty" -Lun 1
$server1vmconfig8 = New-AzVMConfig -VMName "L-firstyear-mech-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-firstyear-mech-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname1  | Add-AzVMNetworkInterface -Id $server1nic8.Id | Add-AzVMDataDisk -Name "L-firstyear-mech-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"

$server2vmconfig1 = New-AzVMConfig -VMName "W-secondyear-ec-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-secondyear-ec-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname2  | Add-AzVMNetworkInterface -Id $server2nic1.Id | Add-AzVMDataDisk -Name "W-secondyear-ec-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server2vmconfig2 = New-AzVMConfig -VMName "L-secondyear-ec-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-secondyear-ec-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname2  | Add-AzVMNetworkInterface -Id $server2nic2.Id | Add-AzVMDataDisk -Name "L-secondyear-ec-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server2vmconfig3 = New-AzVMConfig -VMName "W-secondyear-cs-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-secondyear-cs-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname2  | Add-AzVMNetworkInterface -Id $server2nic3.Id | Add-AzVMDataDisk -Name "W-secondyear-cs-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server2vmconfig4 = New-AzVMConfig -VMName "L-secondyear-cs-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-secondyear-cs-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname2  | Add-AzVMNetworkInterface -Id $server2nic4.Id | Add-AzVMDataDisk -Name "L-secondyear-cs-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server2vmconfig5 = New-AzVMConfig -VMName "W-secondyear-it-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-secondyear-it-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname2  | Add-AzVMNetworkInterface -Id $server2nic5.Id | Add-AzVMDataDisk -Name "W-secondyear-it-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server2vmconfig6 = New-AzVMConfig -VMName "L-secondyear-it-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-secondyear-it-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname2  | Add-AzVMNetworkInterface -Id $server2nic6.Id | Add-AzVMDataDisk -Name "L-secondyear-it-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server2vmconfig7 = New-AzVMConfig -VMName "W-secondyear-mech-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-secondyear-mech-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname2  | Add-AzVMNetworkInterface -Id $server2nic7.Id | Add-AzVMDataDisk -Name "W-secondyear-mech-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server2vmconfig8 = New-AzVMConfig -VMName "L-secondyear-mech-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-secondyear-mech-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname2  | Add-AzVMNetworkInterface -Id $server2nic8.Id | Add-AzVMDataDisk -Name "L-secondyear-mech-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"

$server3vmconfig1 = New-AzVMConfig -VMName "W-thirdyear-ec-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-thirdyear-ec-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname3  | Add-AzVMNetworkInterface -Id $server3nic1.Id | Add-AzVMDataDisk -Name "W-thirdyear-ec-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server3vmconfig2 = New-AzVMConfig -VMName "L-thirdyear-ec-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-thirdyear-ec-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname3  | Add-AzVMNetworkInterface -Id $server3nic2.Id | Add-AzVMDataDisk -Name "W-thirdyear-ec-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server3vmconfig3 = New-AzVMConfig -VMName "W-thirdyear-cs-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-thirdyear-cs-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname3  | Add-AzVMNetworkInterface -Id $server3nic3.Id | Add-AzVMDataDisk -Name "W-thirdyear-cs-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server3vmconfig4 = New-AzVMConfig -VMName "L-thirdyear-cs-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-thirdyear-cs-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname3  | Add-AzVMNetworkInterface -Id $server3nic4.Id | Add-AzVMDataDisk -Name "L-thirdyear-cs-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server3vmconfig5 = New-AzVMConfig -VMName "W-thirdyear-it-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-thirdyear-it-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname3  | Add-AzVMNetworkInterface -Id $server3nic5.Id | Add-AzVMDataDisk -Name "W-thirdyear-it-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server3vmconfig6 = New-AzVMConfig -VMName "L-thirdyear-it-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-thirdyear-it-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname3  | Add-AzVMNetworkInterface -Id $server3nic6.Id | Add-AzVMDataDisk -Name "L-thirdyear-it-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server3vmconfig7 = New-AzVMConfig -VMName "W-thirdyear-mech-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-thirdyear-mech-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname3  | Add-AzVMNetworkInterface -Id $server3nic7.Id | Add-AzVMDataDisk -Name "W-thirdyear-mech-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server3vmconfig8 = New-AzVMConfig -VMName "L-thirdyear-mech-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-thirdtyear-mech-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname3  | Add-AzVMNetworkInterface -Id $server3nic8.Id | Add-AzVMDataDisk -Name "L-thirdyear-mech-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"

$server4vmconfig1 = New-AzVMConfig -VMName "W-fourthyear-ec-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-fourthyear-ec-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname4  | Add-AzVMNetworkInterface -Id $server4nic1.Id | Add-AzVMDataDisk -Name "W-fourthyear-ec-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server4vmconfig2 = New-AzVMConfig -VMName "L-fourthyear-ec-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-fourthyear-ec-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname4  | Add-AzVMNetworkInterface -Id $server4nic2.Id | Add-AzVMDataDisk -Name "L-fourthyear-ec-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server4vmconfig3 = New-AzVMConfig -VMName "W-fourthyear-cs-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-fourthyear-cs-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname4  | Add-AzVMNetworkInterface -Id $server4nic3.Id | Add-AzVMDataDisk -Name "W-fourthyear-cs-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server4vmconfig4 = New-AzVMConfig -VMName "L-fourthyear-cs-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-fourthyear-cs-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname4  | Add-AzVMNetworkInterface -Id $server4nic4.Id | Add-AzVMDataDisk -Name "L-fourthyear-cs-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server4vmconfig5 = New-AzVMConfig -VMName "W-fourthyear-it-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-fourthyear-it-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname4  | Add-AzVMNetworkInterface -Id $server4nic5.Id | Add-AzVMDataDisk -Name "W-fourthyear-it-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server4vmconfig6 = New-AzVMConfig -VMName "L-fourthyear-it-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-fourthyear-it-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname4  | Add-AzVMNetworkInterface -Id $server4nic6.Id | Add-AzVMDataDisk -Name "L-fourthyear-it-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server4vmconfig7 = New-AzVMConfig -VMName "W-fourthyear-mech-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Windows -ComputerName "W-fourthyear-mech-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname4  | Add-AzVMNetworkInterface -Id $server4nic7.Id | Add-AzVMDataDisk -Name "W-fourthyear-mech-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"
$server4vmconfig8 = New-AzVMConfig -VMName "L-fourthyear-mech-vm" -VMSize "Standard_B2s" | Set-AzVMOperatingSystem -Linux -ComputerName "L-fourthyear-mech-vm" -Credential $servercred | Set-AzVMSourceImage -PublisherName "Canonical" -Offer "UbuntuServer" -Skus "18.04-LTS" -Version latest | Set-AzVMBootDiagnostic -Enable -StorageAccountName $saname -ResourceGroupName $rgname4  | Add-AzVMNetworkInterface -Id $server4nic8.Id | Add-AzVMDataDisk -Name "L-fourthyear-mech-vm-datadisk-01" -DiskSizeInGB 80 -Lun 1 -CreateOption "Empty"

#Deployment Of VM

$server1vm1 = New-AzVM -ResourceGroupName $rgname1 -Location $location -VM $server1vmconfig1
$server1vm2 = New-AzVM -ResourceGroupName $rgname1 -Location $location -VM $server1vmconfig2
$server1vm3 = New-AzVM -ResourceGroupName $rgname1 -Location $location -VM $server1vmconfig3
$server1vm4 = New-AzVM -ResourceGroupName $rgname1 -Location $location -VM $server1vmconfig4
$server1vm5 = New-AzVM -ResourceGroupName $rgname1 -Location $location -VM $server1vmconfig5
$server1vm6 = New-AzVM -ResourceGroupName $rgname1 -Location $location -VM $server1vmconfig6
$server1vm7 = New-AzVM -ResourceGroupName $rgname1 -Location $location -VM $server1vmconfig7
$server1vm8 = New-AzVM -ResourceGroupName $rgname1 -Location $location -VM $server1vmconfig8

$server2vm1 = New-AzVM -ResourceGroupName $rgname2 -Location $location -VM $server2vmconfig1
$server2vm2 = New-AzVM -ResourceGroupName $rgname2 -Location $location -VM $server2vmconfig2
$server2vm3 = New-AzVM -ResourceGroupName $rgname2 -Location $location -VM $server2vmconfig3
$server2vm4 = New-AzVM -ResourceGroupName $rgname2 -Location $location -VM $server2vmconfig4
$server2vm5 = New-AzVM -ResourceGroupName $rgname2 -Location $location -VM $server2vmconfig5
$server2vm6 = New-AzVM -ResourceGroupName $rgname2 -Location $location -VM $server2vmconfig6
$server2vm7 = New-AzVM -ResourceGroupName $rgname2 -Location $location -VM $server2vmconfig7
$server2vm8 = New-AzVM -ResourceGroupName $rgname2 -Location $location -VM $server2vmconfig8

$server3vm1 = New-AzVM -ResourceGroupName $rgname3 -Location $location -VM $server3vmconfig1
$server3vm2 = New-AzVM -ResourceGroupName $rgname3 -Location $location -VM $server3vmconfig2
$server3vm3 = New-AzVM -ResourceGroupName $rgname3 -Location $location -VM $server3vmconfig3
$server3vm4 = New-AzVM -ResourceGroupName $rgname3 -Location $location -VM $server3vmconfig4
$server3vm5 = New-AzVM -ResourceGroupName $rgname3 -Location $location -VM $server3vmconfig5
$server3vm6 = New-AzVM -ResourceGroupName $rgname3 -Location $location -VM $server3vmconfig6
$server3vm7 = New-AzVM -ResourceGroupName $rgname3 -Location $location -VM $server3vmconfig7
$server3vm8 = New-AzVM -ResourceGroupName $rgname3 -Location $location -VM $server3vmconfig8

$server4vm1 = New-AzVM -ResourceGroupName $rgname4 -Location $location -VM $server4vmconfig1
$server4vm2 = New-AzVM -ResourceGroupName $rgname4 -Location $location -VM $server4vmconfig2
$server4vm3 = New-AzVM -ResourceGroupName $rgname4 -Location $location -VM $server4vmconfig3
$server4vm4 = New-AzVM -ResourceGroupName $rgname4 -Location $location -VM $server4vmconfig4
$server4vm5 = New-AzVM -ResourceGroupName $rgname4 -Location $location -VM $server4vmconfig5
$server4vm6 = New-AzVM -ResourceGroupName $rgname4 -Location $location -VM $server4vmconfig6
$server4vm7 = New-AzVM -ResourceGroupName $rgname4 -Location $location -VM $server4vmconfig7
$server4vm8 = New-AzVM -ResourceGroupName $rgname4 -Location $location -VM $server4vmconfig8