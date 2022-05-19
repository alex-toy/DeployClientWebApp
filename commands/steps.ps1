# Variables
$Global:Subscription = "alexeisubscription"
$Global:Subscription = "Azure subscription 1"

#resource Group :
#southcentralus centralus francecentral westus2 eastus
$Global:RGLocation = "francecentral"
$Global:RGName = "webapp-rg"

#General Settings :"
$Global:AppPath = ".\app"


#######################################################################
# Steps :

az group create --name $RGName --location $RGLocation

."commands\StorageAccount\StorageAccount_create.ps1"

."commands\CosmosDb\CosmosDb_create.ps1"

."commands\CosmosDb\CosmosDb_proceed.ps1"

."commands\WebApp\WebApp_create.ps1"