"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"


################################################################
"CREATE A COLLECTION :"

az cosmosdb mongodb collection create `
    --resource-group $RGName `
    --account-name $CDBDatabaseAccount `
    --database-name $CDBName `
    --name users `
    # [--analytical-storage-ttl]
    # [--idx]
    # [--max-throughput]
    # [--shard]
    # [--throughput]