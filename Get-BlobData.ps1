$StorageAccountName = "testleakedcreds"
$sasToken = "sp=rli&st=2023-05-11T07:51:44Z&se=2023-06-09T15:51:44Z&spr=https&sv=2022-11-02&sr=c&sig=5HV3wX%2BWOrzIvHrvNjqiSJm5JQN2TtF4a95LIZ0UX%2B4%3D"
$container = "test"
$blobsasURL = "https://testleakedcreds.blob.core.windows.net/test?sp=rli&st=2023-05-11T07:51:44Z&se=2023-06-09T15:51:44Z&spr=https&sv=2022-11-02&sr=c&sig=5HV3wX%2BWOrzIvHrvNjqiSJm5JQN2TtF4a95LIZ0UX%2B4%3D"

$BlobContent = New-AzureStorageContext -StorageAccountName $StorageAccountName -SasToken $sasToken
Get-AzureStorageBlob -Context BlobContent -Container $container | Get-AzureStorageBlobContent