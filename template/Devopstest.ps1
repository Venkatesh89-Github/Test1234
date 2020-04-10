
# Variables for common values
$resourceGroup = "PowershellRG"
$location = "EAST US"
$vmName = "PowershellVM"

# Create a subnet configuration
$subnetConfig = New-AzVirtualNetworkSubnetConfig -Name PowershellSubnet -AddressPrefix 192.168.1.0/24

# Create a virtual network
$vnet = New-AzVirtualNetwork -ResourceGroupName $resourceGroup -Location $location `
  -Name PowershellVNet -AddressPrefix 192.168.0.0/16 -Subnet $subnetConfig
