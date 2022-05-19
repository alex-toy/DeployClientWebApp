"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"


################################################################
"Cosmos database :"

$Global:CDBName = "alexeicosmos"
$Global:CDBServerVersion = "4.0"
# Needs to be lower case
$Global:CDBDatabaseAccount = "alexeidatabaseaccount"
#GlobalDocumentDB, MongoDB, Parse
$Global:CDBKind = "MongoDB"
$Global:CDBMaxThroughput = 4000
$Global:CDBThroughput = 400
$Global:CDBCollectionName = 'myfirstcollection'
$Global:CDBDefaultConsistencyLevel = 'Eventual'
$Global:CDBenableAutomaticFailover = 'false'



################################################################
"CREATE A COSMOS DATABASE ACCOUNT :"

az cosmosdb create `
    --name $CDBDatabaseAccount `
    --resource-group $RGName `
    --kind $CDBKind `
    --server-version $CDBServerVersion `
    --default-consistency-level $CDBDefaultConsistencyLevel `
    --enable-automatic-failover $CDBenableAutomaticFailover
    # --subscription $Subscription






